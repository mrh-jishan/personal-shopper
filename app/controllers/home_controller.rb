class HomeController < ApplicationController
  skip_before_action :require_login
  before_action :current_user

  def index
    @products = Product.all
  end
end
