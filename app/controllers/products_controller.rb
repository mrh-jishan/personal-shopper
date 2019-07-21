class ProductsController < ApplicationController
  before_action :require_login
  before_action :set_product_categories
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.where(:user => @current_user)
  end

  def products
    @products = Product.all
  end

  def approve
    product = Product.find(params[:product_id])
    product.update_columns(status: PRODUCT_STATUS[:APPROVED])
    redirect_to admin_products_url
  end

  def reject
    product = Product.find(params[:product_id])
    product.update_columns(status: PRODUCT_STATUS[:REJECTED])
    redirect_to admin_products_url
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @comment = Comment.new
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end


  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = @current_user
    respond_to do |format|
      if @product.save
        format.html {redirect_to @product, notice: 'Product was successfully created.'}
        format.json {render :show, status: :created, location: @product}
      else
        format.html {render :new}
        format.json {render json: @product.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html {redirect_to @product, notice: 'Product was successfully updated.'}
        format.json {render :show, status: :ok, location: @product}
      else
        format.html {render :edit}
        format.json {render json: @product.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html {redirect_to root_url, notice: 'Product was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.

  def set_product
    @product = Product.find(params[:id])
  end

  def set_product_categories
    @categories = ProductCategory.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :product_category_id)
  end
end
