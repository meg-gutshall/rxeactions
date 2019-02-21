# TODO: Add user and login validations for each route

class MedicationsController < ApplicationController

  # List medications by user
  get '/medications' do
    @med = Medication.all.select{|m| m.user_id == session[:user_id]}
    erb :'/medications/list_medications'
  end

  # Render the new medication form
  get '/medications/new' do
    erb :'/medications/new_medication'
  end

  # Create a new medication based on the input collected from the user
  post '/medications' do
    @med = Medication.create(params[:med])
    session[:medication_id] = @med.id
    redirect "/medications/#{@med.slug}"
  end

  # Show medication details
  get '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    session[:medication_id] = @med.id
    erb :'/medications/medication_detail'
  end

  # Render the edit medication form
  get '/medications/:slug/edit' do
    @med = Medication.find_by_slug(params[:slug])
    session[:medication_id] = @med.id
    erb :'/medications/edit_medication'
  end

  # Edit a reaction based on the input collected from the user
  patch '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    @med.update(params[:med])
    session[:medication_id] = @med.id
    redirect "/medications/:slug"
  end

  # Delete a medication
  delete '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    session[:medication_id] = @med.id
    @med.delete
  end

end