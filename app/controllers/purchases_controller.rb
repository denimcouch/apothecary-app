class PurchasesController < Sinatra::Base
  require 'pry'
  set :views, "app/views/purchases"
  set :method_override, true

  get '/purchases' do
    @purchases = Purchase.all
    erb :index
  end
  get '/purchases/new' do
    @potions = Potion.all
    @adventurers = Adventurer.all
    # binding.pry
    erb :new
  end

  post '/purchases' do
    adventurer = Adventurer.find_by(id: params[:adventurer][:name])
    params[:potions].each do |potion_id|
      Purchase.create(adventurer_id: adventurer.id, potion_id: potion_id)
    end
    redirect "/adventurers/#{adventurer.slug}"
  end
end