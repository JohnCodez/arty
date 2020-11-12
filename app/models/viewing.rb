class Viewing < ApplicationRecord
    belongs_to :user
    belongs_to :artwork

    # validates :time, :day, :artwork_id, :user_id, presence: true
end
