class SessionsController < ApplicationController

  # Conditionally redirect to the home page where a signup form is displayed
  # The input from this form will go to the users_controller.rb
  get '/signup' do
    redirect "/users/#{current_user.id}" if logged_in?
    redirect "/"
  end
  
  # Conditionally redirect to the home page where a login form is displayed
  get '/login' do
    redirect "/users/#{current_user.id}" if logged_in?
    redirect "/"
  end

  # Receive the input from the login form and create a new session
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
      redirect "/users/#{@user.id}"
    else
      flash[:alert] = "The password you entered is incorrect. Please try again."
      redirect "/"
    end
  end

  # Clear the current session
  get '/logout' do
    session.clear
    redirect "/"
  end

end