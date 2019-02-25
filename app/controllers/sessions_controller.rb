class SessionsController < ApplicationController

  # Renders a signup form
  # The input from this form will go to the users_controller
  get '/signup' do
    if logged_in?
      redirect "/users/dashboard-#{current_user.id}"
    end
    erb :'/sessions/signup'
  end

  # Renders a login form
  get '/login' do
    if logged_in?
      redirect "/users/dashboard-#{current_user.id}"
    end
    erb :'/sessions/login'
  end

  # Receives the input from the login form and creates a new session
  post '/login' do
    # Find the user
    @user = User.find_by(email: params[:user][:email])
    # Make sure the user exists in the database and the password matches
    if @user && @user.authenticate(params[:user][:password])
      # Log user in
      session[:user_id] = @user.id
      redirect "/users/dashboard-#{@user.id}"
    else
      redirect "/login-error"
    end
  end

  # Displays login form errors
  get '/login-error' do
    @user = User.new
    @user.errors.add(:email, 'may contain a typo. Please check your spelling and try again.')
    @user.errors.add(:email, 'address may not be associated with an account. Do you need to sign up for an account?')
    @user.errors.add(:password, 'entered may be incorrect. Please try again.')
    erb :'/sessions/login_error'
  end

  # Displays signup form errors
  get '/signup-error' do
    @user = User.new
    @user.errors.add(:attr, 'error message')
    erb :'/sessions/signup_error'
  end

  # Clears the current session
  get '/logout' do
    session.clear
    redirect "/"
  end

end