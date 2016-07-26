require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

get('/')do
  erb(:index)
end

#read

get('/users') do
  @users = User.all()
  erb(:users_list)
end

get('/user/:id') do
  @user = User.find(params['id'])
  erb(:user_show)
end

#create

get('/users/new') do
  erb(:user_new)
end

post('/users/create') do
  User.create(first_name: params['first_name'], last_name: params['last_name'], track: params['track'], transportation: params['transportation'], lunch: params['lunch'], ninth_floor: params['ninth_floor'])
  erb(:user_success)
end

#edit
get('/user/:id/edit') do
  @user = User.find(params['id'])
  erb(:user_edit)
end

patch('/user/:id') do
  @user = User.find(params['id'])
  @user.update(first_name: params['first_name'], last_name: params['last_name'], track: params['track'], transportation: params['transportation'], lunch: params['lunch'], ninth_floor: params['ninth_floor'])
  redirect "user/#{@user.id}"
end

#delete
delete('/user/:id') do
  @user = User.find(params['id']).destroy()
  redirect :users
end

## players

# #get('/users') do
#   erb(:users_list)
# end
#
# get('/user/:id') do
#   erb(:user_show)
# end
#
# #create
# get('/user/:id/new') do
#   erb(:user_new)
# end
#
  get('/players/new') do
   erb(:players_new)
  end

post('/players/create') do
  @player = Player.create(player_name: params['player_name'], counter: 1, score: 0)
  redirect "players/#{@player.id}/quiz_1"
end

#
#
#
 patch('/player/:id') do
   @player = Player.find(params['id'])
   score = @player.score
   counter = @player.counter
   counter += 1
   score += params['answer'].to_i
   @player.update(score: score, counter: counter)
   if @player.counter > 6
     redirect "players/#{@player.id}/result"
   else
     redirect "/players/#{@player.id}/quiz_#{counter}"
   end
 end

#Quiz stuff

get('/players/:id/quiz_1') do

  # prng = Random.new
  # rand_int = prng.rand(User.first.id..User.last.id)
  # @user_1 = User.find(rand_int)
  #
  # prng = Random.new
  # rand_int = prng.rand(User.first.id..User.last.id)
  # @user_2 = User.find(rand_int)

  # rand_int = rand(User.count)
  # @user_2 = User.find(rand_int)

  @player = Player.find(params['id'])
  erb(:quiz_1)
end

get('/players/:id/quiz_2') do
  @player = Player.find(params['id'])
  erb(:quiz_2)
end

get('/players/:id/quiz_3') do
  @player = Player.find(params['id'])
  erb(:quiz_3)
end

get('/players/:id/quiz_4') do
  @player = Player.find(params['id'])
  erb(:quiz_4)
end

get('/players/:id/quiz_5') do
  @player = Player.find(params['id'])
  erb(:quiz_5)
end

get('/players/:id/quiz_6') do
  @player = Player.find(params['id'])
  erb(:quiz_6)
end

get('/players/:id/result') do
  @player = Player.find(params['id'])
  erb(:result)
end

post('/player/:id/reset') do
  @player = Player.find(params['id'])
  @player.update(counter: 1, score: 0)
  redirect "players/#{@player.id}/quiz_1"
end





# 1 get two random users from db
#
# 2 inject info into erb
#
# 3 on submit update score and counter for player
#
# 4 redirect / reload page with new records
