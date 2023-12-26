class OrdersController < ApplicationController
  @products = []

  def validation
    statut == 'valide'
  end

  def create
    product = Product.find(params[:product_id])
    order = Order.create(statut_id: 2, product: product.sku, user: current_user, product: product)
    # For Stripe this is where I added the secret KEY
    redirect_to
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
