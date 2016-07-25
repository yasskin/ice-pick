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
  @player = Player.create(player_name: params['player_name'])
  redirect "players/#{@player.id}/quiz_1"
end
#
# #edit
# get('/user/:id/edit') do
#
# end
#
 patch('/user/:id/edit') do
   erb(:users_list)
 end
#
# #delete
# delete('/user/:id') do
#     erb(:users_list)
# end


#Quiz stuff

get('/players/:id/quiz_1') do
  erb(:quiz_1)
end




# 1 get two random users from db
#
# 2 inject info into erb
#
# 3 on submit update score and counter for player
#
# 4 redirect / reload page with new records
