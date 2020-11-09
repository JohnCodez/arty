class Specialist < ApplicationRecord
    has_many :artworks
    has_many :gallerylocations, through: :artworks 
end
