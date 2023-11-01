class Book < ApplicationRecord
  has_many :bookings, dependent: :destroy
end
