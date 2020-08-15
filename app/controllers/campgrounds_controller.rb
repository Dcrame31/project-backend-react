class CampgroundsController < ApplicationController
  before_action :set_campground, only: [:show, :update, :destroy]

  # GET /campgrounds
  def index
    @campgrounds = Campground.all

    render json: @campgrounds
  end

  # GET /campgrounds/1
  def show
    render json: @campground
  end

  # POST /campgrounds
  def create
    @campground = Campground.new(campground_params)

    if @campground.save
      render json: @campground, except: [:created_at, :updated_at]
    else
      render json: @campground.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /campgrounds/1
  def update
    if @campground.update(campground_params)
      render json: @campground
    else
      render json: @campground.errors, status: :unprocessable_entity
    end
  end

  # DELETE /campgrounds/1
  def destroy
    @campground.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campground
      @campground = Campground.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def campground_params
      params.require(:campground).permit(:name, :location_id, :description, :link, :cost)
    end
end
