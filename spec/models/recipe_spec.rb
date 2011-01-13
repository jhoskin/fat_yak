require 'spec_helper'

describe Recipe do
  before(:each) do
	  @recipe = Factory.build(:recipe)
  end

  it "should create a new instance given valid attributes" do
	  @recipe.save.should be_true
  end

  it "should require a title" do
	  @recipe.title = ""
	  @recipe.save.should_not be_true
  end

  it "should require a sellable yield" do
	  @recipe.sellable_yield = nil
	  @recipe.save.should_not be_true
  end

  it "should require a sellable yield unit" do
	  @recipe.sellable_yield_unit = nil
	  @recipe.save.should_not be_true
  end

  it "should require a waste yield" do
	  @recipe.waste_yield = nil
	  @recipe.save.should_not be_true
  end

  it "should require a waste yield unit" do
	  @recipe.waste_yield_unit = nil
	  @recipe.save.should_not be_true
  end

end
