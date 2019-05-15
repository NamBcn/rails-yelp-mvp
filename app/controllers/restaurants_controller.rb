class RestaurantsController < ApplicationController
  # before_action :set_restaurant, only: [:show ]
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path([:id])
    else

        render :new
      end
    end

    def show
      @restaurant = Restaurant.find(params[:id])
    end

    private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end

