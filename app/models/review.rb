class Review < ApplicationRecord
  REVIEWS = (0..5)
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: REVIEWS }
end
