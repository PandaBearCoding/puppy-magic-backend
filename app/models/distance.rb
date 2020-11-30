class Distance < ApplicationRecord
    has_many :distance_preferences
    has_many :users, through: :distance_preferences
end