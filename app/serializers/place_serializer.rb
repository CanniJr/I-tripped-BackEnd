class PlaceSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :user
  belongs_to :trip
end
