class ApplicationController < ActionController::Base
  # before_action :get_app_user_type
  # helper_method :logged_in?

  # def logged_in?
  #   user_id = session[:user_id]
  #   user = User.find_by_id(user_id)
  #   if user
  #     if user.user_type == USER_TYPES[:CUSTOMER]
  #       redirect_to product_path
  #     else
  #       redirect_to address_path
  #     end
  #   else
  #     putc "user not logged in"
  #   end
  # end
  #
  # def destroy
  #   session[:user_id] = nil
  #   redirect_to root_path
  # end
  #
  #
  # def get_app_user_type
  #   puts params[:user_type]
  #   params[:user]
  # end
end
