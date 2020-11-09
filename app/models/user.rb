class User < ApplicationRecord
    has_many :viewings
    has_many :artworks, through: :viewings 
end
