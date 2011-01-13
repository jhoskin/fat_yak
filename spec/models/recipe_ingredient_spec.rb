require 'spec_helper'

describe RecipeIngredient do
  before(:each) do
	  @recipe_ingredient = Factory.build(:recipe_ingredient)
  end

  it "should create a new instance given valid attributes" do
	  @recipe_ingredient.save.should be_true
  end

  it "should require a quantity" do
	  @recipe_ingredient.quantity = nil
	  @recipe_ingredient.save.should_not be_true
  end
  
  it "should require a quantity greater than zero" do
	  @recipe_ingredient.quantity = 0
	  @recipe_ingredient.save.should_not be_true
  end

  it "should require an ingredient" do
	  @recipe_ingredient.ingredient = nil
	  @recipe_ingredient.save.should_not be_true
  end

  it "should require a recipe" do
	  @recipe_ingredient.recipe = nil
	  @recipe_ingredient.save.should_not be_true
  end

  it "should require a quantity unit" do
	  @recipe_ingredient.quantity_unit = nil
	  @recipe_ingredient.save.should_not be_true
  end

end
