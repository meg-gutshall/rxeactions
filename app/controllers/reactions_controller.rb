# TODO: Add user and login validations for each route
# Must go to medication view page to create a new reaction!!

class ReactionsController < ApplicationController

  # List reactions by medication
  get '/medications/:slug/reactions' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    erb :'/reactions/list_reactions'
  end

  # Render the new reaction form
  get '/medications/:slug/reactions/new' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    erb :'/reactions/new_reaction'
  end

  # Create a new reaction based on the input collected from the user
  post '/medications/:slug/reactions' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    # TODO: Add validations error message
    flash[:error] = # break down by params
    @reax = Reaction.create(params[:reax])
    @reax.medication_id = current_med.id
    @reax.save
    redirect "/reactions/#{@reax.slug}"
  end

  # Show reaction details
  get '/medications/:slug/reactions/:slug' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    erb :'/reactions/reaction_detail'
  end

  # Render the edit reaction form
  get '/medications/:slug/reactions/:slug/edit' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    erb :'/reactions/edit_reaction'
  end
  
  # Edit a reaction based on the input collected from the user
  patch '/medications/:slug/reactions/:slug' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    @reax.update(params[:reax])
    redirect "/reactions/#{@reax.id}"
  end

  # Delete a reaction
  delete '/medications/:slug/reactions/:slug' do
    user_check
    @med = Medication.find_by_slug(params[:slug])
    @reax = Reaction.find_by_slug(params[:slug])
    user_stray
    @reax.delete
    redirect "/reactions"
  end

end