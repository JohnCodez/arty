class Specialist < ApplicationRecord
    has_many :artworks
    has_many :gallerylocations, through: :artworks 

    # validates :name, :bio, :speciality, presence: true
    # validates :name, uniqueness: true
    # validates :bio, length: {minimum: 15}
end
