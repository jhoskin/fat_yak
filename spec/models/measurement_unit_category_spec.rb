require 'spec_helper'

describe MeasurementUnitCategory do
  before(:each) do
	  @category = Factory.build(:measurement_unit_category)
  end

  it "Should create a new instance given valid attributes" do
	  @category.save.should be_true
  end

  it "Should require a title" do
	  @category.title = ""
	  @category.save.should_not be_true
  end

end
