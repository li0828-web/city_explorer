class Landmark < ApplicationRecord
  has_many :reviews, as: :reviewable
  
  validates :name, presence: true
  validates :category, presence: true
  validates :address, presence: true
  validates :description, length: { minimum: 10 }, allow_blank: true
end
