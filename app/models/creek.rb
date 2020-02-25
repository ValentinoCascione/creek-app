class Creek < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, :country, :city, :rating, :available, :price, :description, :capacity, presence: true
  validates :title,  uniqueness: true
end
