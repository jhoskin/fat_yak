class ApplicationController < ActionController::Base
  include SessionsHelper

  protect_from_forgery
  before_filter :authenticate
  
  def signed_in?	
	  !current_user.nil?
  end

  def current_user=(user)
	  @current_user = user
  end

  def current_user
	  @current_user ||= user_from_session
  end

  private

  def authenticate
	  redirect_to signin_path if !signed_in?  	
  end
 
  def user_from_session
	  User.find_by_id(session[:remember_token])
  end

end
