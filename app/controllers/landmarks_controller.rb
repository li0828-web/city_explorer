class LandmarksController < ApplicationController
  def index
    @landmarks = Landmark.all
    @categories = Landmark.distinct.pluck(:category).compact.sort
    
    if params[:search].present?
      @landmarks = @landmarks.where("name ILIKE ? OR category ILIKE ? OR description ILIKE ?", 
                                    "%#{params[:search]}%", 
                                    "%#{params[:search]}%",
                                    "%#{params[:search]}%")
    end
    
    if params[:category].present? && params[:category] != ""
      @landmarks = @landmarks.where(category: params[:category])
    end
    
    # Add pagination
    @landmarks = @landmarks.page(params[:page]).per(9)
  end

  def show
    @landmark = Landmark.find(params[:id])
    @reviews = @landmark.reviews
  end
end
