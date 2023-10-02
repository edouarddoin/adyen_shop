class OrdersController < ApplicationController

  def validation
    statut == 'valide'
  end

  def create
    @order = Order.new(order_params)
    if @order.save
      redirect_to orders_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def order_params
    params.require(:order).permit(:statut_id, :product_sku, :user_id, :product_id)
  end
end
