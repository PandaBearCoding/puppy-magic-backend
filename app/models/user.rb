class User < ApplicationRecord
    has_many :matches
    has_many :dogs, through: :matches
    has_many :breed_preferences
    has_many :breeds, through: :breed_preferences
    has_many :environment_preferences
    has_many :environments, through: :environment_preferences
    has_many :location_preferences
    has_many :locations, through: :location_preferences

    accepts_nested_attributes_for :matches
    accepts_nested_attributes_for :breed_preferences
    accepts_nested_attributes_for :environment_preferences
    accepts_nested_attributes_for :location_preferences

    # to be able to display information from the join tables, we need instance methods

    def matched_dogs
        User.first.matches.map {|match| match.dog}
    end

    def breed_pref
        User.first.breed_preferences.map {|bp| bp.breed}
    end

    def environment_pref
        User.first.environment_preferences.map {|ep| ep.environment}
    end

    def location_pref
        User.first.location_preferences.map {|lp| lp.location}
    end 
end
