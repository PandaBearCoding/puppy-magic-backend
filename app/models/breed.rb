class Breed < ApplicationRecord
    has_many :breed_preferences
    has_many :users, through: :breed_preferences
end
