require_relative './config/environment'

# Loads all Rake tasks for ActiveRecord
require 'sinatra/activerecord/rake'

# Creates a new Rake task that starts a Pry session
desc "Start a new Pry session in the terminal"
task :console do
  Pry.start
end

# Creates a new Rake task that starts the app
desc "Start the app"
task :start do
  bundle exec thin -R config.ru -e $RACK_ENV -a 127.0.0.1 -p 8080 start
end

# Creates a new Rake task that stops the app
desc "Stop the app"
task :stop do
  bundle exec thin stop
end