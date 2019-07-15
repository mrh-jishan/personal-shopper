class ApplicationController < ActionController::Base
  # helper_method :logged_in?

  def logged_in?
    user_id = session[:user_id]
    user = User.find_by_id(user_id)
    if user
      if user.user_type == USER_TYPES[:CUSTOMER]
        redirect_to product_path
      else
        redirect_to address_path
      end
    else
      putc "user not logged in"
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path
  end
end
