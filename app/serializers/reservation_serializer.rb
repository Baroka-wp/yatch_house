class ReservationSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :end_date, :status, :total
  belong_to :house
  belong_to :user
end
