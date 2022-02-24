class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :moto

  validates :moto, presence: true
  validates :user, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
end
