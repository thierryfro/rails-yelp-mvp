class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, length: { in: 1..5 }
end
