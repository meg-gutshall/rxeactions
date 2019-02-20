class UsersController < ApplicationController

  # Receives information from the sessions login form, creates a new user, then renders their dashboard
  post '/users/signup' do
    # Validate params using a helper method
    if signup_invalid?
      # TODO: Add error message
      redirect "/signup"
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
    # TODO: Add some sort of validations
    @user = User.find_by(id: params[:id])
    erb :'/users/user_dashboard'
  end

  get '/users/dashboard-:id/edit' do
    # TODO: Add some sort of validations
    @user = User.find_by(id: params[:id])
    erb :'/users/edit_user'
  end

  patch 'users/dashboard-:id' do
    HEllo
    redirect "/users/dashboard-#{@user.id}"
  end

end