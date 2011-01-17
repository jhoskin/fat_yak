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
end
