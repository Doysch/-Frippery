class CostumesController < ApplicationController

  def list
    @costumes = Costume.all
  end

  def new
    @costume = Costume.new
  end

  def create
    @costume = Costume.new(params[:size, :location, :genre, :price])
    @costume = Costume.new(list_params)
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


end
