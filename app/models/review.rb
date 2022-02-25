class Review < ApplicationRecord
  belongs_to :moto
  AUTHORIZED_RATINGS = (1..5)
  validates :rating, inclusion: { in: AUTHORIZED_RATINGS }
end
