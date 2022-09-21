class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :telephone, :email, :admin, :password_digest
end
