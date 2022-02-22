class Moto < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :brand, presence: true
  validates :address, presence: true
  validates :power, presence: true
  validates :kilometers, presence: true
  validates :price, presence: true
  has_one_attached :photo
end
