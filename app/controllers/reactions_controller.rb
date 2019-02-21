# TODO: Add user and login validations for each route
class ReactionsController < ApplicationController

  # List reactions
  get '/reactions' do
    # Build helper method
    @reax = Reaction.all.select{|r| r.user_id == session[:user_id]}
    erb :'/reactions/list_reactions'
  end

  get '/reactions/new' do
    erb :'/reactions/new_reaction'
  end

  post '/reactions' do
    @reax = Reaction.create(params[:reax])
    redirect "/reactions"
  end

  get '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    erb :'/reactions/reaction_detail'
  end

  get '/reactions/:slug/edit' do
    @reax = Reaction.find_by_slug(params[:slug])
    erb :'/reactions/edit_reaction'
  end

  patch '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    @reax.update(params[:reax])
    redirect "/reactions/:slug"
  end

  # Delete reaction
  delete '/reactions/:slug' do
    @reax = Reaction.find_by_slug(params[:slug])
    @reax.delete
  end

end