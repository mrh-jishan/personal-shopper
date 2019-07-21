class HomeController < ApplicationController
  skip_before_action :require_login
  before_action :current_user

  def index
    @products = Product.where(:product_category => ProductCategory.find(params[:category])) rescue Product.all
    @products = @products.where(:status => PRODUCT_STATUS[:APPROVED])
  end
end
