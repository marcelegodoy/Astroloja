class ReviewsController < ApplicationController

  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
    @user = current_user
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @service = Service.find(params[:service_id])
    @review.user = current_user
    @review.service = @service
    @review.save
    if @review.save
      redirect_to service_path(@service.id)
      authorize @review
    else
      redirect_to services_path
    end
  end

  def show
    authorize @review
  end

  def destroy

  end

  private

  def review_params
      params.require(:review).permit(:description, :stars, :service_id)
  end
end
