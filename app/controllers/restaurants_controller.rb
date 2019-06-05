class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
  @restaurant = Restaurant.create(restaurant_params)
  redirect_to restaurant_path(@restaurant)
  end

private


end
