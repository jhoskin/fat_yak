require 'spec_helper'

describe User do

  before(:each) do
	  @user = Factory.build(:user)
  end

  it "Should create a new instance given valid attributes" do
	  @user.save.should be_true
  end

  it "Should require a name" do
	  @user.name = ""
	  @user.save.should_not be_true
  end

  it "Should require an email address" do
	  @user.email = ""
	  @user.save.should_not be_true
  end

  it "Should require a valid email address" do
	  @user.email = "&%*^$&^$*("
	  @user.save.should_not be_true
  end

end
