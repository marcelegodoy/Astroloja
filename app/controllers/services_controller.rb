class ServicesController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
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
  end

  private

  def service_params
    params.require(:service).permit(:name)
  end
end
