require 'spec_helper'

describe Ingredient do
  before(:each) do
	  @ingredient = Factory.build(:ingredient)
  end

  it "Should create a new instance given valid attributes" do
	  @ingredient.save.should be_true
  end

  it "Should require a title" do
	  @ingredient.title = ""
	  @ingredient.save.should_not be_true
  end


end
