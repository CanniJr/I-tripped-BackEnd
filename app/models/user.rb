class User < ApplicationRecord
    has_many :my_trips, classname: "Trip"
    has_many :places
    has_many :trips, through: :places

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
