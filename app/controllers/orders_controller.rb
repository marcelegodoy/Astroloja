class OrdersController < ApplicationController
  # before_action :set_order, only: [:new, :create]
  before_action :set_service, only: [:new, :create]

  def new
    @order = Order.new
  end

  def create

  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def set_service
    @service = Service.find(params[:service_id])
  end

  def order_params
    params.require(:order).permit(:ordered_at, :user_id, :service_id)
  end

end
