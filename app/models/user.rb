class User < ApplicationRecord
    has_many :viewings
    has_many :artworks, through: :viewings 

    validates :name, presence: true
    validates :name, uniqueness: true
end
