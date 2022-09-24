class HouseSerializer < ActiveModel::Serializer
  attributes :id, :location, :description, :price, :image
end
