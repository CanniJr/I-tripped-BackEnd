class Trip < ApplicationRecord
  belongs_to :user
  has_many :places
  has_many :users, through: :places
end
