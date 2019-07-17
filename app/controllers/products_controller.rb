class ProductsController < ApplicationController
  before_action :require_login
  before_action :set_product_categories
  before_action :set_product, only: [:show, :edit, :update, :destroy]

  # GET /products
  # GET /products.json
  def index
    @products = Product.all
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


  # def comment
  #   @comment = Comment.new(comment_params)
  #   @comment.user = @user
  #   @comment.product = @product
  #
  #   debugger
  #   respond_to do |format|
  #     if @comment.save
  #       format.html {redirect_to @comment, notice: 'Product was successfully created.'}
  #       format.json {render :show, status: :created, location: @comment}
  #     else
  #       format.html {render :comment}
  #       format.json {render json: @comment.errors, status: :unprocessable_entity}
  #     end
  #   end
  # end

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

  # def comment_params
  #   params.require(:comment).permit(:comment)
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def product_params
    params.require(:product).permit(:name, :description, :price, :image, :product_category_id)
  end
end
