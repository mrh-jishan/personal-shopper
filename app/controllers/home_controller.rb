class HomeController < ApplicationController
  skip_before_action :require_login
  before_action :current_user

  def index
    @category = ProductCategory.find(params[:category]) rescue nil
    @products = Product.where(:product_category => ProductCategory.find(params[:category])) rescue Product.all
    @products = @products.where(:status => PRODUCT_STATUS[:APPROVED])
    @products = @products.where("name LIKE ?", "%#{params[:search]}%") rescue @products
  end


  def new
    @feedback = Feedback.new
  end

  def create
    @feedback = Feedback.new(feedback_params)

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to root_path, notice: 'Feedback was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  private

  def feedback_params
    params.require(:feedback).permit(:name, :feedback, :email)
  end
end
