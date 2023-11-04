class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
  end

  def create
  end

  def renter_bookings
    # a voir avec Christopher samedi
  end
end
