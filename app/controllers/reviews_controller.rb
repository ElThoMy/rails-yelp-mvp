class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  def index
    @reviews = Reviews.all
  end

  def show
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(reviews_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @review.update(reviews_params)
    redirect_to restaurant_path
  end

  def destroy
    @review.destroy
    redirect_to restaurant_path
  end

  private

  def reviews_params
    params.require(:review).permit(:rating, :content)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
