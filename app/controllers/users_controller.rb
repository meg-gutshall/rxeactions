class UsersController < ApplicationController

  # Displays the current user's information, medications, and reactions
  get '/users/dashboard-:id' do
    @user = User.find_by(id: params[:id])
    user_check_stray
    if @user && @user.id == current_user.id
      @meds = @user.medications
      erb :'/users/user_dashboard'
    end
  end

  get '/users/dashboard-:id/edit' do
    @user = User.find_by(id: params[:id])
    user_check_stray
    if @user && @user.id == current_user.id
      erb :'/users/edit_user'
    end
  end

  patch '/users/dashboard-:id' do
    @user = User.find_by(id: params[:id])
    user_check_stray
    @user.update(params[:user])
    redirect "/users/dashboard-#{@user.id}"
  end

  ## ========== HELPER METHODS ========== ##

  def user_check_stray
    if !logged_in? || @user == nil
      flash[:alert] = "You have been logged out of your session. Please log back in to continue."
      redirect "/"
    elsif @user.id != current_user.id
      flash[:alert] = "You do not have permission to view or edit other users' content."
      redirect "/"
    end
  end

end