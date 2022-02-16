class Restaurant < ApplicationRecord
  CATEGORIES = %w[Chinese Italian Japanese French Belgian].freeze
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORIES }
  has_many :reviews, dependent: :destroy
end
