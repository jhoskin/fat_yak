require 'spec_helper'

describe SessionsController do
	render_views
	
	describe "GET 'new'" do
		
		it "should be successful" do
			get 'new'
			response.should be_success
		end

		it "should have the right title" do
			get :new
			response.should have_selector("h2", :content => "sign in")
		end

	end

	describe "POST 'create'" do

		describe "with valid username/password" do

			before(:each) do
				@user = Factory.build(:user)
				@user.save!
				@attr = {:name => @user.name, :password => @user.password}
			end

			it "should sign the user in" do
				post :create, :session => @attr
				controller.current_user.should == @user
				controller.should be_signed_in
			end

			it "should redirect to the private home page" do
				post :create, :session => @attr
				response.should redirect_to(home_path)
			end
		end
	end

	describe "DELETE 'destroy'" do

		it "should sign a user out" do
			test_sign_in(Factory(:user))
			delete :destroy, :id => 0 # id is not relevant
			controller.should_not be_signed_in
			response.should redirect_to(signin_path)
		end
	end

end
