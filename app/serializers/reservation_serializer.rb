class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :status, :total
  belongs_to :house
  belongs_to :user
end
