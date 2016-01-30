class CartsController < ApplicationController
  before_action :authenticate_user!

  def add
    @cart = Cart.find_or_create_by(order_id: params[:order_id])
    binding.pry
    id = params[:id]
    items = @cart.items
    if items[id]
      items[id] = items[id].to_i + 1
    else
      items[id] = 1
    end
    @cart.save
    redirect_to action: :index, order_id: @cart.order_id
  end

  # def clearCart
  #   session[:cart] = nil
  #   redirect_to action: :index
  # end

  def index
    @cart = Cart.find_by_order_id(params[:order_id])
  end
end
