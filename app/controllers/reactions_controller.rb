# TODO: Add user and login validations for each route
# Must go to medication view page to create a new reaction!!

class ReactionsController < ApplicationController

  # List reactions by medication
  get '/reactions' do
    user_check
    # TODO: Figure this out
    @reactions = current_user.reactions
    erb :'/reactions/list_reactions'
  end

  # Render the new reaction form
  get '/reactions/new' do
    user_check
    erb :'/reactions/new_reaction'
  end

  # Create a new reaction based on the input collected from the user
  post '/reactions' do
    user_check
    # TODO: Add validations error message
    flash[:error] = # break down by params
    @reax = Reaction.create(params[:reax])
    @reax.medication_id = current_med.id
    @reax.save
    redirect "/reactions/#{@reax.slug}"
  end

  # Show reaction details
  get '/reactions/:slug' do
    user_check
    @reax = Reaction.find_by_slug(params[:slug])
    @med = Medication.find_by(id: @reax.medication_id)
    user_stray
    erb :'/reactions/reaction_detail'
  end

  # Render the edit reaction form
  get '/reactions/:slug/edit' do
    user_check
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    erb :'/reactions/edit_reaction'
  end
  
  # Edit a reaction based on the input collected from the user
  patch '/reactions/:slug' do
    user_check
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    @reax.update(params[:reax])
    redirect "/reactions/#{@reax.id}"
  end

  # Delete a reaction
  delete '/reactions/:slug' do
    user_check
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    @reax.delete
    redirect "/reactions"
  end

  ## ========== HELPER METHODS ========== ##

  def user_stray
    if Medication.find_by(id: @reax.medication_id).user_id != current_user.id
      flash[:error] = "You do not have permission to view or edit other users' content."
      redirect "/"
    end
  end

  def reax_user
    User.find_by(id: Medication.find_by(id: @reax.medication_id).user_id)
  end

end