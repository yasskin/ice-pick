require("bundler/setup")
Bundler.require(:default)

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file}

#reloader

get('/users') do
  erb(:users_list)
end

get('/user/:id') do
  erb(:user_show)
end

#create
get('/user/:id/new') do
  erb(:user_show)
end

post('/user/create') do

end

#edit
get('/user/:id/edit') do

end

patch('/user/:id/edit') do
  erb(:users_list)
end

#delete
delete('/user/:id') do
    erb(:users_list)
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
#   erb(:user_show)
# end
#
# post('/user/create') do
#
# end
#
# #edit
# get('/user/:id/edit') do
#
# end
#
# patch('/user/:id/edit') do
#   erb(:users_list)
# end
#
# #delete
# delete('/user/:id') do
#     erb(:users_list)
# end

# 1 get two random users from db
#
# 2 inject info into erb
#
# 3 on submit update score and counter for player
#
# 4 redirect / reload page with new records
