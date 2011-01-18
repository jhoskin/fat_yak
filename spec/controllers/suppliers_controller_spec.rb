require 'spec_helper'

describe SuppliersController do

	before(:each) do
		test_sign_in(Factory(:user))
	end

	describe "GET 'new'" do
		it "should be successful" do
			get 'new'
			response.should be_success
		end
	end

	describe "GET 'show'" do
		it "should be successful" do
			get 'show', :id => 0
			response.should be_success
		end
	end

	describe "GET 'index'" do
		it "should be successful" do
			get 'index'
			response.should be_success
		end
	end

	describe "GET 'edit'" do
		it "should be successful" do
			get 'edit', :id => 0
			response.should be_success
		end
	end

	describe "POST 'create'" do

		describe "failure" do

			before(:each) do
				@attr = {:name => ""}
			end

			it "should reject invalid form fields" do
				lambda do
					post :create, :supplier => @attr
				end.should_not change(Supplier, :count)
			end

			it "should render the 'new' page" do
				post :create, :supplier => @attr
				response.should render_template('new')
			end
		end

		describe "success" do
			
			before(:each) do
				@attr = {:name => "ABC Ltd"}
			end

			it "should create a new supplier given valid attributes" do
				lambda do
					post :create, :supplier => @attr
				end.should change(Supplier, :count)
				response.should redirect_to(suppliers_path)
			end


		end
	end


end
