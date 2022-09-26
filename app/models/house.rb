class House < ApplicationRecord
  # mount_uploader :image, ImageUploader
  has_many :reservations, dependent: :destroy

  validates :name, presence: true
  validates :location, presence: true
  validates :price, presence: true
  validates :description, presence: true
end
