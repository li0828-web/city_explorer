class Restaurant < ApplicationRecord
  has_many :reviews, as: :reviewable
  
  validates :name, presence: true
  validates :address, presence: true
  validates :cuisine, presence: true
  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }, allow_nil: true
  validates :price_range, inclusion: { in: ["$", "$$", "$$$", "$$$$"] }, allow_nil: true
end
