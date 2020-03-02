class OrdersController < ApplicationController
  before_action :set_service, only: [:new, :create]

  def new
    @order = Order.new
    authorize @order
  end

  def create
    @order = Order.new(user_id: current_user.id, service: @service, ordered_at: Date.today)
    authorize @order
    @order.save
    if @order.save
      redirect_to orders_myorders_path
    else
      render :new
    end
  end

  def my_orders
    @orders = Order.where(user_id: current_user.id)
    authorize @orders
  end

  private

  def set_service
    @service = Service.find(params[:service_id])
  end

  def order_params
    params.require(:order).permit(:service_id)
  end

end
