class SessionsController < ApplicationController
	
	
  SIGN_IN_TITLE = "sign in"
  skip_before_filter :authenticate, :only => [:new, :create]

  def new
	  @title = SIGN_IN_TITLE
  end  

  def create
	  user = User.authenticate(params[:session][:name],
							   params[:session][:password])
	  
	  if user.nil?
		  flash.now[:error] = "Invalid email/password combination."
		  @title = SIGN_IN_TITLE
		  render "new"
	  else	
		  puts home_path
		  sign_in user
		  redirect_to home_path
	  end
  end

  def destroy
	  sign_out
	  redirect_to signin_path
  end
  


end
