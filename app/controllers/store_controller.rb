class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def index
    session[:counter] ||= 0
    @count = session[:counter] += 1 
    @products = Product.order(:title)
  end
  
  def checkout
    if @cart.empty?
      redirect_to_index("Your cart is empty")
    else
      @order = Order.new
      @disable_checkout_button = true
    end
  end
end
