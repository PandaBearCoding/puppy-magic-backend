class MatchSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :dog_id, :name, :profile_picture, :profile_picture_two

  has_one :user
  has_one :dog
end
