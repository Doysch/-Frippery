class CostumesController < ApplicationController

  def index
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def show
    @costume = Costume.find(params[:id])
  end

  def create
    @costume = Costume.new(costume_params)
    if @costume.save
      redirect_to costume_path(@costume)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit

  end

  def update

  end

  private
  # def set_list
  #   @costume = Costume.find(params[:id])
  # end

  def costume_params
    params.require(:costume).permit(:size, :location, :name, :price)
  end

end
