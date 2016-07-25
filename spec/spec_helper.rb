ENV['RACK_ENV'] = 'test'

require("bundler/setup")
Bundler.require(:default)
set(:root, Dir.pwd())

require('capybara/rspec')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)
require('./app')

Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each {|file| require file}

Rspec.configure do |config|
  config.after(:each) do
    User.all().each() do |user|
      user.destroy()
    end
    Player.all().each() do |player|
      player.destory()
    end
  end
end
