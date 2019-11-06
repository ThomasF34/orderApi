class Api::V1::OrdersController < ApplicationController
  before_action :set_user
  before_action :set_order, only: [:show, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.where(user_id: params[:user_id])
    render json: @orders
  end

  # GET /orders/1
  def show
    render json: @order
  end

  # POST /orders
  def create
    @order = @user.orders.create(order_params.except(:products))

    order_params["products"].each do |placement|
      product = Product.where(name: placement["product"]["name"]).first
      if product.nil?.!
        newPlacement = Placement.new(order_id: @order.id, product_id: product.id, quantity: placement["quantity"])
        newPlacement.save
      else
        @order.destroy
        return render json: "Product #{placement["product"]["name"]} not found", status: :bad_request
      end
    end

    render json: @order, status: :created
  end


  def usual
    orders = []
    Struct.new("Items", :quantity, :product)

    @user.orders.each { |order| orders.push(order.placements) }
    maxCommand = @user.orders.to_ary.group_by { |order| order.placements.map{|placement| Struct::Items.new placement["quantity"], placement["product_id"] }}.inject({}){ |hash,(k,v)| hash.merge( k => v.count ) }.max_by{|k,v| v}
    res = maxCommand.first
    if res.nil?
      render json: "Mdr pas de commande favorite", status: :not_found
    else
      res.map do |placement|
        product = Product.find(placement.product)
        placement.product = { name: product.name, price: product.price }
        placement
      end
      render json: res, status: :ok
    end
  end

  # # PATCH/PUT /orders/1
  # def update
  #   if @order.update(order_params)
  #     render json: @order
  #   else
  #     render json: @order.errors, status: :unprocessable_entity
  #   end
  # end

  # # DELETE /orders/1
  # def destroy
  #   @order.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:user_id, products: [:quantity, product: :name])
    end
end
