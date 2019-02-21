require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    # Enable the use of sessions and call the session_secret ENV variable
    enable :sessions
    set :session_secret, "stupid secret"
    # Set app configurations
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    erb :reaxctions
  end

  ## ========== HELPER METHODS ========== ##

  # Returns the current user or 'nil' if none exists
  def current_user
    User.find_by(id: session[:user_id])
  end

  # Returns true or 'nil' if there is no current user
  def logged_in?
    !!current_user
  end

  # Returns the current medication of 'nil' if none exists
  def current_med
    Medication.find_by(id: session[:medication_id])
  end

end
