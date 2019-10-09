class ReviewsController < ApplicationController
  before_action :find_booking, only: [:new, :create]
  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.booking_id = @booking.id
    if @review.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end
end
