class Moto < ApplicationRecord
  belongs_to :user
  has_many :reviews
  validates :name, presence: true
  validates :brand, presence: true
  validates :address, presence: true
  validates :available, presence: true
  validates :power, presence: true
  validates :kilometers, presence: true
end
