# Require Gemfile and bundle gems with dependencies
require 'bundler/setup'
Bundler.require(:default)
require 'active_record'

# Establish connection with the database
ActiveRecord::Base.establish_connection(ENV['DATABASE_URL'] || 'postgres://localhost/rxeactions_development')

# Require ApplicationController before all other files
require './app/controllers/application_controller'

# Require program files nested under the 'app' folder
require_all 'app'