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

# get('users') do
#
# end
#
# get('user/:id') do
#
# end
#
# post('user/create') do
#
# end
#
# patch('user/:id') do
#
# end
#
# delete('user/:id') do
#
# end
