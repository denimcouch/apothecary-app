class AdventurersController < Sinatra::Base
  set :views, "app/views/adventurers"
  set :method_override, true

  get '/adventurers' do
    @adventurers = Adventurer.all
    erb :index
  end

  get '/adventurers/new' do
    erb :new
  end

  get '/adventurers/:slug' do
    @adventurer = Adventurer.find_by_slug(params[:slug])
    erb :show
  end

  get '/adventurers/:id' do
    @adventurer = Adventurer.find(params[:id])
    erb :show
  end 
  
  get '/adventurers/:slug/edit' do
    @adventurer = Adventurer.find_by_slug(params[:slug])
    erb :edit
  end

  post '/adventurers' do
    binding.pry
    adventurer = Adventurer.create(params)
    redirect "/adventurers/#{adventurer.slug}"
  end

  patch '/adventurers/:slug' do
    binding.pry
    adventurer = Adventurer.find_by_slug(params[:slug])
    adventurer.update(params[:adventurer])
    adventurer.save
    redirect "/adventurers/#{adventurer.slug}"
  end

  delete '/adventurers/:slug' do
    adventurer = Adventurer.find_by_slug(params[:slug])
    adventurer.destroy
    redirect "/adventurers"
  end
end