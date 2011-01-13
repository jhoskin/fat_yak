require 'spec_helper'

describe MeasurementUnit do

  before(:each) do	  
	  @unit = Factory.build(:measurement_unit)
  end

  it "Should create a new instance given valid attributes" do
	  @unit.save.should be_true
  end

  it "Should require a title" do
	  @unit.title = ""
	  @unit.save.should_not be_true
  end

  it "Should require a measurement_unit_category" do
	  @unit.measurement_unit_category = nil
	  @unit.save.should_not be_true
  end
end
