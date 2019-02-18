class SessionsController < ApplicationController

  # Renders a signup form
  # The input from this form will go to the users_controller
  get '/signup' do
    redirect "/users/dashboard" if logged_in?
    erb :'/sessions/signup'
  end

  # Renders a login form
  get '/login' do
    redirect "/users/dashboard" if logged_in?
    erb :'/sessions/login'
  end

  # Receives the input from the login form and creates a new session
  post '/login' do
    # Find the user
    @user = User.find_by(email: params[:user][:email])
    # Make sure the user exists in the database and their password is correct
    if @user && @user.authenticate(params[:user][:password])
      # Log user in
      session[:user_id] = @user.id
      redirect "/users/dashboard"
    else
      # TODO: Add error message
      erb :'/sessions/login'
    end
  end

  # Clears the current session
  get '/logout' do
    session.clear
    redirect "/"
  end

end