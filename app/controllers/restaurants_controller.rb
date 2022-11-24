class RestaurantsController < ApplicationController
  require 'debug'
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  def index
    @restaurant = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path(@restaurant), notice: 'new add'
    # if @restaurant.save
    #   redirect_to restaurants_path(@restaurant), notice: 'New restaurant added'
    # else
    #   render :new, status: :unprocessable_entity
    # end
  end

  def edit

  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully updated.'
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :category,
      :website,
      :price
    )
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
