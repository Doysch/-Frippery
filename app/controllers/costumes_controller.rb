class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
    if params[:query].present?
      @lasttwelve = Costume.where("name ILIKE ?", "%#{params[:query]}%")
      @markers = [{
          lat: @lasttwelve.first.latitude,
          lng: @lasttwelve.first.longitude
        }]

    else
      @lasttwelve = @costumes.reverse.first(9)
      @markers = @costumes.geocoded.map do |flat|
        {
          lat: flat.latitude,
          lng: flat.longitude
        }
      end
    end
  end

  def new
    @costume = Costume.new
  end

  def show
    @costume = Costume.find(params[:id])
    @markers = [
      {
        lat: @costume.latitude,
        lng: @costume.longitude
      }]
  end

  def create
    @costume = Costume.new(costume_params)
    @costume.user = current_user
    if @costume.save
      redirect_to costumes_path(@costume)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def set_list
    @costumes = Costume.find(params[:id])
  end

  def costume_params
    params.require(:costume).permit(:size, :location, :price, :photo, :name, :address)
  end
end
