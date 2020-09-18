class RecipesController < ApplicationController
  set :views, "app/views/recipes"
  set :method_override, true
end