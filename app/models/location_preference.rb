class LocationPreference < ApplicationRecord
    belongs_to :user
    belongs_to :location

    accepts_nested_attributes_for :location

    validates :location_id, uniqueness: {scope: :user_id,  message: "This location has already been added to your preferences!"}
end
