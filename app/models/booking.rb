class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moto

  validates :moto, presence: true
  validates :user, presence: true
end
