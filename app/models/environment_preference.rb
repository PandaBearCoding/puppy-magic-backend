class EnvironmentPreference < ApplicationRecord
    belongs_to :user
    belongs_to :environment

    accepts_nested_attributes_for :environment

    validates :environment_id, uniqueness: {scope: :user_id,  message: "This environment attribute has already been added to your preferences!"}
end
