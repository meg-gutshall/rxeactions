require './config/environment'
require 'sysrandom/securerandom'

class ApplicationController < Sinatra::Base

  configure do
    # Enable the use of sessions and use the Sysrandom gem to set the session secret
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') {SecureRandom.hex(64)}
    # Set app configurations
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :reaxctions
  end

  ## ========== HELPER METHODS ========== ##

  # Returns the current user or `nil` if none exists
  def current_user
    User.find_by(id: session[:user_id])
  end

  # Returns true or `nil` if there is no current user
  def logged_in?
    !!current_user
  end

  def signup_invalid?
    params[:user][:email].empty? || !params[:user][:email].match(/^\w+@\w+\.\w+$/) || params[:user][:password].empty? || params[:user][:name].empty? || params[:user][:birth_date].empty?
  end

end
