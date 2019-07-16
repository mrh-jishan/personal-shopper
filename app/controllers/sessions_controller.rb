class SessionsController < ApplicationController
  skip_before_action :require_login

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: login_params[:email])
    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      if user.user_type === USER_TYPES[:ADMIN]
        # todo for the auth
        redirect_to products_path
      else
        redirect_to products_path
      end
    else
      flash[:danger] = 'ERROR: Login Unsuccessful'
      redirect_to new_session_path
    end
  end

  private

  def login_params
    params.require(:user).permit(:email, :password)
  end
end
