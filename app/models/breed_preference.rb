# class BreedPreference < ApplicationRecord
#     belongs_to :user
#     belongs_to :breed

#     accepts_nested_attributes_for :breed

#     validates :breed_id, uniqueness: {scope: :user_id,  message: "This breed has already been added to your preferences!"}
# end
