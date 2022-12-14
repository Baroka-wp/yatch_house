class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :house

  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :status, presence: true
  validates :total, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
