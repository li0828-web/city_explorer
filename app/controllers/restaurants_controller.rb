class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @cuisines = Restaurant.distinct.pluck(:cuisine).compact.sort
    
    if params[:search].present?
      @restaurants = @restaurants.where("name ILIKE ? OR cuisine ILIKE ?", 
                                        "%#{params[:search]}%", 
                                        "%#{params[:search]}%")
    end
    
    if params[:cuisine].present? && params[:cuisine] != ""
      @restaurants = @restaurants.where(cuisine: params[:cuisine])
    end
    
    # Add pagination
    @restaurants = @restaurants.page(params[:page]).per(9)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end
end
