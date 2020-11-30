class DistanceSerializer < ActiveModel::Serializer
    attributes :id, :distance
  
    has_many :distance_preferences
  end
  