class ApplicationController < Sinatra::Base
  require 'pry'
  set :views, "app/views"
  set :method_override, true


  get '/' do
    erb :welcome
  end

  get '/purchases/new' do
    erb :new
  end
end
