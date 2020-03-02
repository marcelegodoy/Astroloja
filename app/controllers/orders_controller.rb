class OrdersController < ApplicationController
  before_action :set_service, only: [:new, :create]

  def new
  end

  def create
    @order = Order.new(user_id: current_user.id, service: @service, ordered_at: Date.today)
    @order.save
    if @order.save
      redirect_to services_path
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
    authorize @service
  end

  def order_params
    params.require(:order).permit(:service_id)
  end

end
