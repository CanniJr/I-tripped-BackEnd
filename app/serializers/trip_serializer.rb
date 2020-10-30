class TripSerializer < ActiveModel::Serializer
  attributes :id, :caption, :cover_photo

  has_many :places
  belongs_to :user
end
