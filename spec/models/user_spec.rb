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

  it "Should require confirmation of the password" do
	  @user.password_confirmation = ""
	  @user.save.should_not be_true
  end
 
  it "should have an encrypted password attribute" do
	  @user.should respond_to(:encrypted_password)
  end

  
  describe "password encryption" do
	  
	  before(:each) do
		  @user.save!
	  end

	  it "should set the encrypted password attribute on save" do		  
		  @user.encrypted_password.should_not be_blank
	  end
	  
	  describe "has_password? method" do
		  
		  it "should be true if the passwords match" do			 
			  @user.password_verified?(@user.password).should be_true
		  end
		  
		  it "should be false if the passwords don't match" do
			  @user.password_verified?("invalid").should be_false
		  end
	  end

	  describe "authenticate method" do
	  
		  it "should return nil on name/password mismatch" do
			  wrong_password_user = User.authenticate(@user.name, "incorrectpassword")
			  wrong_password_user.should be_nil
		  end
		  
		  it "should return nil for a name that doesnt match a user" do
			  nonexistent_user = User.authenticate("missinguser", @user.password)
			  nonexistent_user.should be_nil		  
		  end

		  it "should return the user on name/password match" do
			  matching_user = User.authenticate(@user.name, @user.password)
			  matching_user.should == @user
		  end
	  end

  end  
end
