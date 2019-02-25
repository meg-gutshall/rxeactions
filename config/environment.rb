# Set Sinatra ENV variable
ENV['SINATRA_ENV'] ||= "development"

# Set session_secret variable --> Not using this
ENV['SESSION_SECRET'] ||= "eggs4megs"

# Require Gemfile and bundle gems with dependencies
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# Establish connection with the database
ActiveRecord::Base.establish_connection(
  adapter: "sqlite3",
  database: "db/#{ENV['SINATRA_ENV']}.sqlite"
)

# Require program files nested under the 'app' folder
require_all 'app'