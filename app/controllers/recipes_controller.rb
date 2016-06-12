class RecipesController < ApplicationController
  def index
    # Make all recipe objects (from DB) available in the index action.
    @recipes = Recipe.all
  end
  
  def create
    
  end
  
  def new
    
  end
  
  def edit
    
  end
  
  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def update
    
  end
  
  def destroy
    
  end
end