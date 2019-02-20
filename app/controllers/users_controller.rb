class UsersController < ApplicationController

  # Receives information from the sessions login form, creates a new user, then renders their dashboard
  post '/users' do
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
    @user = User.find_by(id: params[:id])
    if @user && @user.id == current_user.id
      erb :'/users/user_dashboard'
    else
      # TODO: Add error message
      redirect "/"
    end
  end

  get '/users/dashboard-:id/edit' do
    @user = User.find_by(id: params[:id])
    if @user && @user.id == current_user.id
      erb :'/users/edit_user'
    else
      # TODO: Add error message
      redirect "/"
    end
  end

  patch 'users/dashboard-:id' do
    @user = User.find_by(id: params[:id])
    @user.update(params[:user])
    redirect "/users/dashboard-#{@user.id}"
  end

end