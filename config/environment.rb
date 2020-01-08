# Require Gemfile and bundle gems with dependencies
require 'bundler/setup'
# Bundler.require(:default, ENV['RACK_ENV'])

# Establish connection with the database
db = URI.parse(ENV['DATABASE_URL'] || 'postgres://localhost/mydb')

ActiveRecord::Base.establish_connection(
  :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
  :host     => db.host,
  :username => db.user,
  :password => db.password,
  :database => db.path[1..-1],
  :encoding => 'utf8'
)

# Require ApplicationController before all other files
require './app/controllers/application_controller'

# Require program files nested under the 'app' folder
require_all 'app'