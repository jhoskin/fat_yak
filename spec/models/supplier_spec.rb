require 'spec_helper'

describe Supplier do

  before(:each) do
	 @supplier = Factory.build(:supplier)
  end

  it "Should create a new instance given valid attributes" do
	  @supplier.save.should be_true	
  end

  it "Should require a name" do
	  @supplier.name = ""
	  @supplier.save.should_not be_true
  end

end
