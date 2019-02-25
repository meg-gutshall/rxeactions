# Set Sinatra ENV variable
ENV['SINATRA_ENV'] ||= "development"

# Require Gemfile and bundle gems with dependencies
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# Establish connection with the database
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/#{ENV['SINATRA_ENV']}.sqlite"
)

# Require ApplicationController before all other files
require './app/controllers/application_controller'

# Require program files nested under the 'app' folder
require_all 'app'