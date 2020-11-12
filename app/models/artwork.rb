class Artwork < ApplicationRecord
    has_many :viewings
    has_many :users, through: :viewings 
    
    belongs_to :specialist
    belongs_to :gallerylocation

    # validates :name, :size, :medium, :gallerylocation_id, :specialist_id, presence: true
    # validates :name, uniqueness: true
end
