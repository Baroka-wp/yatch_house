class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :telephone, :admin, :password_digest
end
