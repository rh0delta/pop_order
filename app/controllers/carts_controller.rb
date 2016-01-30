class CartsController < ApplicationController
  before_action :authenticate_user!

  def add
    if Cart.find_by_order_id!(params[:order_id])
      @cart = Cart.find_by_order_id!(params[:order_id])
      if @cart.item_id == params[:id]
      @cart.save
    redirect_to action: :index
  end

  # def clearCart
  #   session[:cart] = nil
  #   redirect_to action: :index
  # end

  def index
    @cart = Cart.find_by_order_id(params[:order_id])
  end
end
