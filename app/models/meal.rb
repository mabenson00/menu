class Meal < ApplicationRecord
  belongs_to :side
  belongs_to :main
  validates :name, uniqueness: true
end
