class Artwork < ApplicationRecord
    has_many :viewings
    has_many :users, through: :viewings 
    
    belongs_to :specialist
    belongs_to :gallerylocation
end
