require 'spec_helper'

describe HomeController do

	before(:each) do
		test_sign_in(Factory(:user))
	end
	
	describe "GET 'index'" do
		it "should be successful" do
			get 'index'
			response.should be_success
		end
	end

end
