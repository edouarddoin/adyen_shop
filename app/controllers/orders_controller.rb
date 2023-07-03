class OrdersController < ApplicationController

  def validation
    statut == 'valide'
  end

  def create
    Order.new
  end
end
