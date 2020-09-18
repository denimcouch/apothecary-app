class AdventurersController < ApplicationController
  set :views, "app/views/adventurers"
  set :method_override, true

  get '/adventurers' do
    @adventurers = Adventurer.all
    erb :index
  end

  get '/adventurers/:slug' do
    @adventurer = Adventurer.find_by_slug(params[:slug])
    erb :show
  end

  get '/adventurers/:id' do
    @adventurer = Adventurer.find(params[:id])
    erb :show
  end  
end