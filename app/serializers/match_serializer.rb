class MatchSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :dog_id

  has_one :user
  has_one :dog
end
