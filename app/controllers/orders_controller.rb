class OrdersController < ApplicationController
  before_action :set_service, only: [:new, :create]

  def new
  end

  def create
    @order = Order.new(user_id: current_user.id, service_id: @service.id, ordered_at: Date.today)
    @order.save
    if @order.save
      redirect_to services_path
    else
      render :new
    end
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
