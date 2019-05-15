class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [:show ]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = restaurant.create(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

  def strong_params_restaurant
    params.require(:restaurant).permit(:name, :address, :phone_number, :category, :reviews)
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end

