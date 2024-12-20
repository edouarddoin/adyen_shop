class OrdersController < ApplicationController
  @order = []

  def validation
    statut == 'valide'
  end

  def create
    product = Product.find(params[:product_id])
    order = Order.create(statut_id: 2, user: current_user, product: product)
    # to correct during the next commit
    # @order = Order.new(order_params)
    # if @order.save
    # redirect_to orders_path
    # else
    # render :new, status: :unprocessable_entity
  end

  def new
    @order = Order.new # Needed to instantiate the form_with
  end

  def show
    @order = current_user.orders.find(params[:id])
  end

  def validate
    @order.update(status_id: 9)
  end

  private

  def product_params
    params.require(:order, :statut_id, :user_id, :product_id).permit(:product_sku)
  end

  # t.bigint "statut_id", null: false
  # t.string "product_sku"
  # t.bigint "user_id", null: false
  # t.bigint "product_id", null: false
  # t.datetime "created_at", null: false
  # t.datetime "updated_at", null: false
end
