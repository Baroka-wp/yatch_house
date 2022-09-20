class HouseSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :image
end
