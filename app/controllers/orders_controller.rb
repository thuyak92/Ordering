class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
    @items = Item.where("id in (#{@order.items})")
  end

end