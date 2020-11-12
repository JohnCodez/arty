class Gallerylocation < ApplicationRecord
    has_many :artworks 
    has_many :specialists, through: :artworks 


    # validates :name, :location, presence: true
    # validates :name, :location, uniqueness: true

end
