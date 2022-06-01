class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    costume = Costume.find(params[:costume_id])
    @booking.costume = costume
    @booking.user = current_user
    @booking.total_price
    if @booking.save
      redirect_to _path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @user = User.find(params[:user_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @user = User.find(params[:user_id])
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to user_path(@user)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :costume_id)
  end

  def total_price
    days = booking.end_date - booking.start_date
    total_price = days * costume.price
    @booking.total_price = total_price
  end

end
