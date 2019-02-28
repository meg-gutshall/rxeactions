class SessionsController < ApplicationController

  # Renders a signup form
  # The input from this form will go to the users_controller
  get '/signup' do
    redirect "/users/dashboard-#{current_user.id}" if logged_in?
    redirect "/"
  end

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
      flash[:user_error] = "We cannot find your email address in our user database. Please check your spelling and try again, or sign up for an account using the link below."
      redirect "/login-error"
    end
    # Make sure the user exists in the database and the password matches
    if @user && @user.authenticate(params[:user][:password])
      # Log user in
      session[:user_id] = @user.id
      redirect "/users/dashboard-#{@user.id}"
    else
      flash[:pwd_error] = "The password you entered is incorrect. Please try again."
      redirect "/login-error"
    end
  end

  # Displays login form errors
  get '/login-error' do
    redirect "/users/dashboard-#{current_user.id}" if logged_in?
    erb :'/sessions/login_error'
  end

  # Displays signup form errors
  get '/signup-error' do
    redirect "/users/dashboard-#{current_user.id}" if logged_in?
    erb :'/sessions/signup_error'
  end

  # Clears the current session
  get '/logout' do
    session.clear
    redirect "/"
  end

end