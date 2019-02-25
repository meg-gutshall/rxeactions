class UsersController < ApplicationController

  # Receives information from the sessions login form, creates a new user, then renders their dashboard
  post '/users' do
    # Validate params using a helper method
    if signup_invalid?
      # TODO: Add error message
      flash[:error] = # break down by params
      redirect "/signup-error"
    else
      # Create user
      @user = User.create(params[:user])
      # Log user in
      session[:user_id] = @user.id
      # Redirect
      redirect "/users/dashboard-#{@user.id}"
    end
  end

  # Displays the current user's information, medications, and reactions
  get '/users/dashboard-:id' do
    @user = User.find_by(id: params[:id])
    user_check
    if @user && @user.id == current_user.id
      erb :'/users/user_dashboard'
    end
  end

  get '/users/dashboard-:id/edit' do
    @user = User.find_by(id: params[:id])
    user_check
    if @user && @user.id == current_user.id
      erb :'/users/edit_user'
    end
  end

  patch '/users/dashboard-:id' do
    @user = User.find_by(id: params[:id])
    user_check
    @user.update(params[:user])
    redirect "/users/dashboard-#{@user.id}"
  end

  ## ========== HELPER METHODS ========== ##

  def signup_invalid?
    params[:user][:email].empty? || !params[:user][:email].match(/^\w+@\w+\.\w+$/) || params[:user][:password].empty? || params[:user][:name].empty? || params[:user][:birth_date].empty?
  end

  def user_check
    if !logged_in? || @user == nil || @user.id != current_user.id
      flash[:error] = "You have been logged out of your session. Please log back in to continue."
      redirect "/"
    end
  end

end