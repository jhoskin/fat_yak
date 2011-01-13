require 'spec_helper'

describe Order do
  
  before(:each) do
	  @order = Factory.build(:order)
  end

  it "Should create a new instance given valid attributes" do
	  @order.save.should be_true
  end

  it "Should require a delivered_at date" do
	  @order.delivered_at = nil
	  @order.save.should_not be_true
  end

  it "Should require a freight_cost" do
	  @order.freight_cost = nil
	  @order.save.should_not be_true
  end

  it "Should require a supplier" do
	  @order.supplier = nil
	  @order.save.should_not be_true
  end

end
