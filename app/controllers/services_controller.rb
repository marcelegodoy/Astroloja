class ServicesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @service = Service.new
  end

  def create
    raise
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_service
    @service = Service.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def service_params
    params.require(:service).permit(:name, :description, :city, :state, :category, :price)
  end

end
