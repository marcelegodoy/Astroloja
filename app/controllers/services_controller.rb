class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    @services = policy_scope(Service)
    # sort the services according to how many orders the have (desc). Get the first 10
    @top_services = @services.sort_by { |service| -service.orders.size }.first(10)
    # get the last uploaded services in the database
    @last_services = @services.last(10).reverse
    # pegar os usuarios que mais vendem serviços
    @orders = Order.all
    @best_vendors = @orders.sort_by { |order| -order.service.user.name }.first(10)
  end

  def index
    @services = policy_scope(Service)
    if params[:category]
      @services = @services.where(category_id: params[:category])
    end
  end

  def show
    @service = Service.find(params[:id])
    authorize @service
  end

  def new
    @service = Service.new
    @states = State.all
    @categorys = Category.all
    authorize @service
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    @service.save
    if @service.save
      redirect_to service_path(@service)
      authorize @service
    else
      render :new
    end
  end

  def edit
    @states = State.all
    @categorys = Category.all
    @service = Service.find(params[:id])
    authorize @service
  end

  def update
    @service = Service.find(params[:id])
    authorize @service
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
    authorize @service
  end

  def my_services
    @services = Service.where(user_id: current_user.id)
    authorize @services
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :city, :state_id, :category_id, :price, :photo)
  end

end
