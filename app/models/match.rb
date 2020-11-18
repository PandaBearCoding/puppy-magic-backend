class Match < ApplicationRecord
    belongs_to :user
    belongs_to :dog

    accepts_nested_attributes_for :dog

    validates :dog_id, uniqueness: {scope: :user_id,  message: "This dog has already been added to your matches. Schedule an appointment to meet your new best friend!"}
end
