class Gallerylocation < ApplicationRecord
    has_many :artworks 
    has_many :specialists, through: :artworks 
end
