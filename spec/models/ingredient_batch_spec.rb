require 'spec_helper'

describe IngredientBatch do
  
	before(:each) do
		@batch = Factory.build(:ingredient_batch)
	end

	it "Should create a new instance given valid attributes" do
		@batch.save.should be_true
	end

	it "Should require an ingredient" do
		@batch.ingredient = nil
		@batch.save.should_not be_true
	end

	it "Should require an order" do
		@batch.order = nil
		@batch.save.should_not be_true
	end

	it "Should require a quantity delivered unit" do
		@batch.quantity_delivered_unit = nil
		@batch.save.should_not be_true
	end

	it "Should require a quantity delivered" do
		@batch.quantity_delivered = nil
		@batch.save.should_not be_true
	end

	it "Should require a purchase cost" do
		@batch.purchase_cost = nil
		@batch.save.should_not be_true
	end
	
  it "Should require a quantity in stock unit" do
		@batch.quantity_in_stock_unit = nil
		@batch.save.should_not be_true
	end

	it "Should require a quantity in stock" do
		@batch.quantity_in_stock = nil
		@batch.save.should_not be_true
	end
end
