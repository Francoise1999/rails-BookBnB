class BookingsController < ApplicationController
  # index des reservation pour le loueur
  def index
    @bookings = Booking.where(user: current_user)
    @owner_bookings = current_user.owner_bookings
  end

  def new
    @book = Book.find(params[:book_id])
    @booking = Booking.new
  end

  def create
    @book = Book.find(params[:book_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.book = @book

    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  # C'est comme un index des reservations mais pour le proprietaire des livres
  # def owner_bookings
  #   @owner_bookings = current_user.owner_bookings
  # end

  private

  def booking_params
    params.require(:booking).permit(:date)
  end
end
