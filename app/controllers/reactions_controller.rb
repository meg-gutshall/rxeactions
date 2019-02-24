# TODO: Add user and login validations for each route
# Must go to medication view page to create a new reaction!!

class ReactionsController < ApplicationController

  # List reactions by medication
  get '/reactions' do
    erb :'/reactions/list_reactions'
  end

  # Render the new reaction form
  get '/reactions/new' do
    erb :'/reactions/new_reaction'
  end

  # Create a new reaction based on the input collected from the user
  post '/reactions' do
    # Validate input
    @reax = Reaction.create(params[:reax])
    @reax.medication_id = current_med.id
    # binding.pry
    @reax.save
    redirect "/reactions/#{@reax.slug}"
  end

  # Show reaction details
  get '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    @med = Medication.find_by(id: @reax.medication_id)
    erb :'/reactions/reaction_detail'
  end

  # Render the edit reaction form
  get '/reactions/:slug/edit' do
    @reax = Reaction.find_by_slug(params[:slug])
    erb :'/reactions/edit_reaction'
  end
  
  # Edit a reaction based on the input collected from the user
  patch '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    @reax.update(params[:reax])
    redirect "/reactions/#{@reax.id}"
  end

  # Delete a reaction
  delete '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    @reax.delete
  end

end