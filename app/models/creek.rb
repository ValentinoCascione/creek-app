class Creek < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :title, :country, :city, :rating, :available, :price, :description, :capacity presence: true
  validates :title,  uniqueness: true
end
