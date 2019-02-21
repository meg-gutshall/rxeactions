# TODO: Add user and login validations for each route
class MedicationsController < ApplicationController

  # List medications
  get '/medications' do
    erb :'/medications/list_medications'
  end

  get '/medications/new' do
    erb :'/medications/new_medication'
  end

  post '/medications' do
    @med = Medication.create(params[:med])
    redirect "/medications"
  end

  get '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    erb :'/medications/medication_detail'
  end

  get '/medications/:slug/edit' do
    @med = Medication.find_by_slug(params[:slug])
    erb :'/medications/edit_medication'
  end

  patch '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    @med.update(params[:med])
    redirect "/medications/:slug"
  end

  # Delete medication
  delete '/medications/:slug' do
    @med = Medication.find_by_slug(params[:slug])
    @med.delete
  end

end