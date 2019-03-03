class SessionsController < ApplicationController

  # Renders a login form
  get '/login' do
    redirect "/users/dashboard-#{current_user.id}" if logged_in?
    redirect "/"
  end

  # Receives the input from the login form and creates a new session
  post '/login' do
    # Find the user
    @user = User.find_by(email: params[:user][:email])
    if @user == nil
      flash[:alert] = "We cannot find your email address in our user database. Please check your spelling and try again, or sign up for an account."
      redirect "/"
    end
    # Make sure the user exists in the database and the password matches
    if @user && @user.authenticate(params[:user][:password])
      # Log user in
      session[:user_id] = @user.id
      redirect "/users/dashboard-#{@user.id}"
    else
      flash[:alert] = "The password you entered is incorrect. Please try again."
      redirect "/"
    end
  end

  # Renders a signup form
  # The input from this form will go to the users_controller
  get '/signup' do
    redirect "/users/dashboard-#{current_user.id}" if logged_in?
    redirect "/"
  end
  
  # Receives information from the sessions login form, creates a new user, then renders their dashboard
  post '/users' do
    # Create user object based on params passed in from new user form
    @user = User.new
    @user.update(params[:user])
    # Validate params using a helper method and ActiveRecord validations
    if @user.errors[:email].any?
      flash[:alert] = "There is already an account associated with this email address."
      redirect "/"
    elsif @user.errors[:password].any?
      flash[:alert] = "Your password must be between 6 and 20 characters long."
      redirect "/"
    else
    # Log user in
    session[:user_id] = @user.id
    # Redirect
    redirect "/users/dashboard-#{@user.id}"
    end
  end

  # Clears the current session
  get '/logout' do
    session.clear
    redirect "/"
  end

end