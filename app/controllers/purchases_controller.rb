class PurchasesController < ApplicationController
  set :views, "app/views/purchases"
  set :method_override, true

  get '/purchases' do
    @purchases = Purchase.all
    erb :index
  end
  get 'purchases/new' do
    erb :new
  end
end