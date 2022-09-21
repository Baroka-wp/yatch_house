class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :status
  has_one :user
  has_one :house
end
