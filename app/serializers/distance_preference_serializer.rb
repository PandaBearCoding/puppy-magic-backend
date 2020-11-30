class DistancePreferenceSerializer < ActiveModel::Serializer
    attributes :id, :user_id, :distance_id
  
    has_one :user
    has_one :distance
  end
  