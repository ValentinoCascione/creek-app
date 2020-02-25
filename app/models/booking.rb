class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :creek

  # validates :date, presence: true
end
