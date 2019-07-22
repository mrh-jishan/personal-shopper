class OrdersController < ApplicationController
  before_action :require_login
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_product, only: [:new, :create]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.where(:status => [ORDER_STATUES[:PAID]..ORDER_STATUES[:BUYER_RECEIVED_PAYMENT]], :user_buyer => @current_user)
    @unpaid_orders = Order.where(:user_customer => @current_user, :status => ORDER_STATUES[:CREATED])

    @my_orders = Order.where(:user_buyer => @current_user).or(Order.where(:user_customer => @current_user))

    @transaction = Transaction.new
    @transaction.total = @unpaid_orders.inject(0) {|sum, e| sum + e.product.price}
    @transaction.customer_user = @current_user
  end


  def all
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new
    @order.product = @product
    @order.user_buyer = @current_user
    @order.user_customer = @product.user
    @order.status = ORDER_STATUES[:CREATED]

    respond_to do |format|
      if @order.save
        @product.update_columns(status: PRODUCT_STATUS[:PICK_UP])

        format.html {redirect_to orders_path, notice: 'Order was successfully created.'}
        format.json {render :show, status: :created, location: @order}
      else
        format.html {render :new}
        format.json {render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html {redirect_to @order, notice: 'Order was successfully updated.'}
        format.json {render :show, status: :ok, location: @order}
      else
        format.html {render :edit}
        format.json {render json: @order.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html {redirect_to orders_url, notice: 'Order was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_order
    @order = Order.find(params[:id])
  end

  def set_product
    @product = Product.find(params[:product_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def order_params
    params.require(:order).permit(:product_id, :user_buyer_id, :user_customer_id)
  end
end
