class RestaurantsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant), notice: 'Restaurant was successfully updated.'
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy
    redirect_to restaurant_path, status: :see_other
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(
      :name,
      :address,
      :category,
      :price,
      :website
    )
  end
end
