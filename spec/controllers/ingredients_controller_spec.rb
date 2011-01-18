require 'spec_helper'

describe IngredientsController do

	before(:each) do
		test_sign_in(Factory(:user))
	end

	 
	describe "GET 'index'" do
		it "should be successful" do
		  get 'index'
		  response.should be_success
		end
	end
	
	describe "GET 'create'" do
		it "should be successful" do
			get 'create'
			response.should be_success
		end
	end
	
	describe "GET 'show'" do
		it "should be successful"
	end
	
	describe "GET 'update'" do
		it "should be successful"
	end
	
	describe "GET 'destroy'" do
		it "should be successful"
	end
	
	describe "GET 'new'" do
		it "should be successful" do
			get 'new'
			response.should be_success
		end
	end
	
	describe "POST 'create'" do

	  describe "failure" do
		  before(:each) do
			  @attr = {:title => ""}
		  end
		  
		  it "should not create a new ingredient" do
			  lambda do
				  post :create, :ingredient => @attr
			  end.should_not change(Ingredient, :count)
		  end

		  it "should render the 'new' page" do
			  post :create, :ingredient => @attr
			  response.should render_template('new')
		  end

	  end

	  describe "success" do
		  before(:each) do
			  @attr = {:title => "Olive oil"}
		  end

		  it "should create a new ingredient given valid attributes" do
			  lambda do
				  post :create, :ingredient => @attr
			  end.should change(Ingredient, :count)
		  end

		  it "should redirect to the index page" do
			  post :create, :ingredient => @attr
			  response.should redirect_to(ingredients_path)
		  end


	  end
  end

end
