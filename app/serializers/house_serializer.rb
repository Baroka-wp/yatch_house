class HouseSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :description, :price, :image
end
