class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :load_category

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  private

  def require_login
    unless current_user
      redirect_to new_session_url
    end
  end

  def current_user
    user_id = session[:user_id]
    @current_user = User.find_by_id(user_id) unless user_id.nil?
  end

  def load_category
    @categories = ProductCategory.all
  end
end
