class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :telephone, :admin, :password, :password_confirmation
end
