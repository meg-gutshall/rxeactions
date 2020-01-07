# Set Sinatra ENV variable
ENV['SINATRA_ENV'] ||= "development"

# Require Gemfile and bundle gems with dependencies
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

# Establish connection with the database
configure :development do
  ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
end

configure :production do
  db = URI.parse(ENV['HEROKU_POSTGRESQL_COBALT_URL'] || 'postgres://localhost/mydb')

  ActiveRecord::Base.establish_connection(
    :adapter  => db.scheme == 'postgres' ? 'postgresql' : db.scheme,
    :host     => db.host,
    :username => db.user,
    :password => db.password,
    :database => db.path[1..-1],
    :encoding => 'utf8'
  )
end

# Require ApplicationController before all other files
require './app/controllers/application_controller'

# Require program files nested under the 'app' folder
require_all 'app'