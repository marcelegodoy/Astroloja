class ReviewsController < ApplicationController

  def new
    @service = Service.find(params[:service_id])
    @review = Review.new
    @user = current_user
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.service = Service.find(params[:service_id])
    @review.save
    if @review.save
      redirect_to services_path
      authorize @review
    else
      render :new
    end
  end

  def destroy

  end

  private

  def review_params
      params.require(:review).permit(:description, :stars, :service_id)
  end
end
