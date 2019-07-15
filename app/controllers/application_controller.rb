class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def logged_in?
    session[:user_id]
  end
  
  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
