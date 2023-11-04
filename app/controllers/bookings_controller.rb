class BookingsController < ApplicationController
  # index des reservation pour le loueur
  def index
    @bookings = Booking.where(user: current_user)
  end

  def new
  end

  def create
  end

  # C'est comme un index des reservations mais pour le proprietaire des livres
  def renter_bookings
    @bookings = Bookings.where(user: current_user)
  end
end
