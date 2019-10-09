class BookingsController < ApplicationController
  before_action :find_booking, only: [:show]
  def index
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  def new
    @flat = Flat.find(params[:flat_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flat = Flat.find(params[:flat_id])
    @booking.flat_id = @flat.id
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      raise
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
