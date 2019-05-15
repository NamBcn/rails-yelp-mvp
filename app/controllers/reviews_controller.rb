class ReviewsController < ApplicationController
  def new
    @review = Review.new(restaurant_params[:id])
  end

  def create
    @review = review.create(review_params)
    redirect_to restaurant_path(@restaurant)
  end
end
