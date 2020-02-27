class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
    @states = State.all
    @categorys = Category.all
  end

  def create
    @service = Service.new(service_params)
    @service.user = current_user
    @service.save
    if @service.save
      redirect_to service_path(@service)
    else
      render :new
    end
  end

  def edit
    @service = Service.find(params[:id])

  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to service_path(@service)
    else
      render :edit
    end
  end

  def destroy
    @service.destroy
    redirect_to services_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:name, :description, :city, :state_id, :category_id, :price)
  end

end
