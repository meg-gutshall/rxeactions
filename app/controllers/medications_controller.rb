# TODO: Add user and login validations for each route

class MedicationsController < ApplicationController

  # List medications by user
  get '/medications' do
    user_check
    @meds = Medication.all.select {|med| med.user_id == current_user.id}
    erb :'/medications/list_medications'
  end

  # Render the new medication form
  get '/medications/new' do
    user_check
    erb :'/medications/new_medication'
  end

  # Create a new medication based on the input collected from the user
  post '/medications' do
    user_check
    # TODO: Add validations error message
    flash[:error] = # break down by params
    @med = Medication.create(params[:med])
    @med.user_id = current_user.id
    @med.save
    redirect "/medications/#{@med.slug}"
  end

  # Show medication details
  get '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    erb :'/medications/medication_detail'
  end

  # Render the edit medication form
  get '/medications/:slug/edit' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    erb :'/medications/edit_medication'
  end

  # Edit a reaction based on the input collected from the user
  patch '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @med.update(params[:med])
    @med.update(user_id: current_user.id)
    redirect "/medications/#{@med.slug}"
  end

  # Delete a medication
  delete '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    user_check_stray
    @med.delete
    redirect "/medications"
  end

end