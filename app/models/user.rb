class User < ApplicationRecord
    has_many :viewings
    has_many :artworks, through: :viewings 

    has_secure_password

    validates :user_name, :name, :password, presence: true
    validates :user_name, uniqueness: true
end
