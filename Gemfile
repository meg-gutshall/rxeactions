source 'http://rubygems.org'

ruby '2.6.5'

gem 'sinatra'
gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'shotgun'
gem 'pry'
gem 'bcrypt'
gem 'tux'
gem 'sinatra-flash', '~> 0.3.0'

# Fix rack gem vulnerability
gem 'rack', '>= 2.0.8'

group :development do
  gem 'sqlite3', '~> 1.3.13'
end

group :production do
  gem 'pg'
  gem 'activerecord-postgresql-adapter'
end