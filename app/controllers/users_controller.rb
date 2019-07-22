class UsersController < ApplicationController
  skip_before_action :require_login, except: [:profile]
  before_action :require_login, only: [:edit, :update, :profile]
  before_action :set_user, only: [:edit, :update, :profile]

  # GET /users/new
  def new
    @user = User.new
    address = @user.build_address
  end


  def create
    @user = User.new(user_params)
    respond_to do |format|
      if @user.save
        format.html {redirect_to new_session_url, notice: 'User was successfully created.'}
        format.json {render :'sessions/new', status: :created, location: @user}
      else
        format.html {render :new}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end


  def profile

  end

  def edit
  end


  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(update_user_params)
        format.html {redirect_to profile_path(@user), notice: 'User was successfully updated.'}
        format.json {render :edit, status: :ok, location: @user}
      else
        format.html {render :'users/edit'}
        format.json {render json: @user.errors, status: :unprocessable_entity}
      end
    end
  end

  # # DELETE /users/1
  # # DELETE /users/1.json
  # def destroy
  #   @user.destroy
  #   respond_to do |format|
  #     format.html {redirect_to users_url, notice: 'User was successfully destroyed.'}
  #     format.json {head :no_content}
  #   end
  # end

  private

  def set_user
    @user = @current_user
  end

  def update_user_params
    params.require(:user).permit(:name, :gender, :contact, address_attributes: [:country, :address, :state, :postcode])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :gender, :contact, address_attributes: [:country, :address, :state, :postcode])
  end
end
