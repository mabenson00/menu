class Side < ApplicationRecord
  has_many :meals
  validates :name, presence: true
end
