class Restaurant < ApplicationRecord
  CATEG = ['chinese', 'italian', 'japanese', 'french','belgian']
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEG }
end
