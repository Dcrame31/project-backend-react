class Campground < ApplicationRecord
    belongs_to :location
    has_many :reviews
end
