# TODO: Add user and login validations for each route
# Must go to medication view page to create a new reaction!!

class ReactionsController < ApplicationController

  # List reactions by medication
  get '/medications/:slug/reactions' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    erb :'/application/list_reactions'
  end

  # Render the new reaction form
  get '/medications/:slug/reactions/new' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    erb :'/reactions/new_reaction'
  end

  # Create a new reaction based on the input collected from the user
  post '/medications/:slug/reactions' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    # TODO: Add error message
    flash[:error] = # break down by params
    @reax = Reaction.create(params[:reax])
    @reax.medication_id = @med.id
    @reax.dosage_amount = @med.dosage_amount
    @reax.usage_instructions = @med.usage_instructions
    @reax.save
    redirect "/medications/#{@med.slug}/reactions-#{@reax.id}"
  end

  # Show reaction details
  get '/medications/:slug/reactions-:id' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @reax = Reaction.find_by(id: params[:id])
    erb :'/reactions/reaction_detail'
  end

  # Render the edit reaction form
  get '/medications/:slug/reactions-:id/edit' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @reax = Reaction.find_by(id: params[:id])
    erb :'/reactions/edit_reaction'
  end
  
  # Edit a reaction based on the input collected from the user
  patch '/medications/:slug/reactions-:id' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @reax = Reaction.find_by(id: params[:id])
    @reax.update(params[:reax])
    redirect "/medications/#{@med.slug}/reactions-#{@reax.id}"
  end

  # Delete a reaction
  delete '/medications/:slug/reactions-:id' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @reax = Reaction.find_by(id: params[:id])
    @reax.delete
    redirect "/medications/#{@med.slug}/reactions"
  end

end