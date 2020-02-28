class Creek < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  validates :title, :country, :city, :price, :description, :capacity, :photo, presence: true
  validates :title,  uniqueness: true

  # Added for geocoding (=> address calculated based on 'city' field)
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
