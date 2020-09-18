class PotionsController < Sinatra::Base
  set :views, "app/views/potions"
  set :method_override, true

  get '/potions' do
    @potions = Potion.all
    erb :index
  end

  get '/potions/:slug' do
    @potion = Potion.find_by_slug(params[:slug])
    erb :show
  end

  get '/potions/:id' do
    @potion = Potion.find(params[:id])
    erb :show
  end
  
end