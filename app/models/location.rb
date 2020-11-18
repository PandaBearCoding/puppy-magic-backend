class Location < ApplicationRecord
    has_many :location_preferences
    has_many :users, through: :location_preferences
end
