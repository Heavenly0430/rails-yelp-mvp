class ReviewsController < ApplicationController
    def new
    @review = Review.new
    # @restaurant = Restaurant.find(params[:restaurant_id]) # -> loaded by default with the set_restaurant method in the private section
    end

  def create
    @review = Review.new(review_params)
    # @restaurant = Restaurant.find(params[:restaurant_id]) # -> loaded by default with the set_restaurant method in the private section
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    # @restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
