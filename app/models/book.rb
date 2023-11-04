class Book < ApplicationRecord

  validates :title, presence: true
  validates :description, presence: true
  validates :author, presence: true
  validates :category, presence: true
  validates :year, presence: true
  validates :price, presence: true
  has_many :bookings, dependent: :destroy
  belongs_to :user
end
