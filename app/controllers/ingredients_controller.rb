class IngredientsController < ApplicationController
  def index	  
	  @ingredients = Ingredient.all
  end

  def create
	  @ingredient = Ingredient.new(params[:ingredient])
	  if @ingredient.save
		  redirect_to ingredients_path	
	  else
		  render 'new'
	  end
  end

  def show
  end

  def update
  end

  def destroy
  end

  def new
	  @ingredient = Ingredient.new
  end

end
