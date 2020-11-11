class User < ApplicationRecord
    has_many :viewings
    has_many :artworks, through: :viewings 

    has_secure_password

    validates :name, presence: true
    validates :name, uniqueness: true
end
