module SessionsHelper

	  def sign_in(user)
	  session[:remember_token] = user.id
	  self.current_user = user
  end
  
  def sign_out	  	  
	  reset_session
	  self.current_user = nil
  end

end
