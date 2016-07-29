require("sinatra/activerecord")
require("sinatra/activerecord/rake")

namespace(:db) do
  task(:load_config)
  task :seed do
    seed_file = File.join('db/seeds.rb')
    load(seed_file) if File.exist?(seed_file)
  end
end
