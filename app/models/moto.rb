class Moto < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

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
