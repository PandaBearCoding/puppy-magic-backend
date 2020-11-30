class DistancePreference < ApplicationRecord
    belongs_to :user
    belongs_to :distance

    accepts_nested_attributes_for :distance

    validates :distance_id, uniqueness: {scope: :user_id,  message: "This distance attribute has already been added to your preferences!"}
end
