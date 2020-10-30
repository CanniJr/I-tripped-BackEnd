class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :avatar, :bio, :age, :email

  has_many :trips
  has_many :places
end
