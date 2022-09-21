class House < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
end
