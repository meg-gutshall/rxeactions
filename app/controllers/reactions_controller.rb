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
    @reax = @med.reactions.create(params[:reax])
    @reax.update(medication_id: @med.id, dosage_amount: @med.dosage_amount, usage_instructions: @med.usage_instructions)
    @med.update(updated_at: @reax.created_at)
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
    redirect "/medications/#{@med.slug}"
  end

end