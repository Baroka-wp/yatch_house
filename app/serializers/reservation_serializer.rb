class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :status
  belong_to :user
  belong_to :house
end
