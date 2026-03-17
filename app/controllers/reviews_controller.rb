class ReviewsController < ApplicationController
  def index
    @reviews = Review.all.order(created_at: :desc)
  end

  def show
    @review = Review.find(params[:id])
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_back fallback_location: reviews_path, notice: "Review deleted"
  end
end
