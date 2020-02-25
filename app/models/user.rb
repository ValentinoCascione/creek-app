class User < ApplicationRecord
  has_many :creeks
  has_many :bookings
  has_one_attached :photo
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, :pseudo, presence: true
  validates :email, :pseudo, uniqueness: true
  
end
