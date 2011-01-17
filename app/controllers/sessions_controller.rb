class SessionsController < ApplicationController

  def new
	  @title = "sign in"
  end

  def create
	  user = User.authenticate(params[:session][:email],
							   params[:session][:password])
	  
	  if user.nil?
		  flash.now[:error] = "Invalid email/password combination."
		  @title = "sign in"
		  render "new"
	  else
		  flash.now[:success] = "Login success"
	  end
  end

  def destroy
  end

end
