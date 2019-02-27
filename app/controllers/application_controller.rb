require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    # Enable the use of sessions and call the session_secret ENV variable
    enable :sessions
    set :session_secret, "eggs4megs"
    # Set app configurations
    set :public_folder, 'public'
    set :views, 'app/views'
    # Add Flash gem
    register Sinatra::Flash
  end

  get "/" do
    clear_session_med
    erb :rxeactions
  end

  get "/about" do
    erb :about
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

  def user_check
    if !logged_in?
      flash[:error] = "You have been logged out of your session. Please log back in to continue."
      redirect "/"
    end
  end

  def user_check_stray
    if Medication.find_by_slug(params[:slug]).user_id != current_user.id
      flash[:error] = "You do not have permission to view or edit other users' content."
      redirect "/"
    elsif !logged_in?
      flash[:error] = "You have been logged out of your session. Please log back in to continue."
      redirect "/"
    end
  end

end
