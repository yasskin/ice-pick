require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

enable :sessions

get('/')do
  erb(:index)
end

get('/admin')do
  erb(:admin)
end

get('/users') do
  @users = User.all()
  erb(:users_list)
end

get('/user/:id') do
  @user = User.find(params['id'])
  erb(:user_show)
end

get('/users/new') do
  erb(:user_new)
end

post('/users/create') do
  User.create(first_name: params['first_name'], last_name: params['last_name'], track: params['track'], transportation: params['transportation'], lunch: params['lunch'], ninth_floor: params['ninth_floor'], pokemon: params['pokemon'], temperature: params['temperature'], sleeping: params['sleeping'], photo: params['photo'])
  erb(:user_success)
end

get('/user/:id/edit') do
  @user = User.find(params['id'])
  erb(:user_edit)
end

patch('/user/:id') do
  @user = User.find(params['id'])
  @user.update(first_name: params['first_name'], last_name: params['last_name'], track: params['track'], transportation: params['transportation'], lunch: params['lunch'], ninth_floor: params['ninth_floor'], pokemon: params['pokemon'], temperature: params['temperature'], sleeping: params['sleeping'], photo: params['photo'])
  redirect "user/#{@user.id}"
end

delete('/user/:id') do
  @user = User.find(params['id']).destroy()
  redirect :users
end

  get('/players/new') do
   erb(:players_new)
  end


post('/players/create') do
  @player = Player.create(player_name: params['player_name'], counter: 1, score: 0)
  redirect "players/#{@player.id}/quiz"
end


 patch('/player/:id') do
   @player = Player.find(params['id'])
   score = @player.score
   counter = @player.counter
   counter += 1
   score += params['answer'].to_i
   @player.update(score: score, counter: counter)

   page_id = Random.rand(Question.count) + 1

   session[:last_question] = params['last_question']

   if @player.counter > 6
     redirect "players/#{@player.id}/result"
   else
     redirect "/players/#{@player.id}/quiz"
   end
 end

 get('/players/:id/quiz') do

   @player = Player.find(params['id'])
   @rand_num = Random.rand(20)
   last_question_id = session[:last_question].to_i

   while(!@user_2)
     @question = Question.where.not(id: last_question_id).sample()
     @topic = @question.topic()
     @target = @question.target()
     @users = User.all()
      if (@topic == 'first_name')
       @user_1 = @users.sample()
       @user_2 = @users.where.not(first_name: @user_1.first_name).sample()
      else
       @user_1 = @users.where(@topic.to_sym => @target).sample()
       @user_2 = @users.where.not(@topic.to_sym => @target).sample()
      end
   end

   erb(@topic.to_sym)
 end

get('/players/:id/result') do
  @player = Player.find(params['id'])
  erb(:result)
end

post('/player/:id/reset') do
  @player = Player.find(params['id'])
  @player.update(counter: 1, score: 0)
  redirect "players/#{@player.id}/quiz"
end

#questions

get('/questions') do
  @questions = Question.all()
  erb(:questions_list)
end

get('/questions/new') do
  erb(:question_new)
end

post('/questions/create') do
  @question = Question.create(prompt: params['prompt'], topic: params['topic'], target: params['target'])
  redirect "/questions/#{@question.id}"
end

get('/questions/:id') do
  @question = Question.find(params['id'])
  erb(:question_show)
end

get('/questions/:id/edit') do
  @question = Question.find(params['id'])
  erb(:question_edit)
end


patch('/questions/:id') do
  @question = Question.find(params['id'])
  @question.update(prompt: params['prompt'], topic: params['topic'], target: params['target'])
  redirect '/questions'
end

delete('/questions/:id') do
  @question = Question.find(params['id']).destroy()
  redirect '/questions'
end

# **************
#
# get('/players/:id/quiz') do
#
#   @player = Player.find(params['id'])
#   @rand_num = Random.rand(20)
#
#   while(!@user_2)
#     @question = Question.all.sample()
#     @topic = @question.topic()
#     @target = @question.target()
#     @users = User.all()
#      if (@topic == 'first_name')
#       @user_1 = @users.sample()
#       @user_2 = @users.where.not(first_name: => @user_1.first_name).sample()
#      else
#       @user_1 = @users.where(@topic.to_sym => @target).sample()
#       @user_2 = @users.where.not(@topic.to_sym => @target).sample()
#      end
#   end
#
#   erb(:quiz)
# end
