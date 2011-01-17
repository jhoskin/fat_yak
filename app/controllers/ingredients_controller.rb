class IngredientsController < ApplicationController
  def index	  
	  @ingredients = Ingredient.all
	  @title = "All ingredients"
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
	  @title = "Add a new ingredient"
	  @ingredient = Ingredient.new
  end

end
