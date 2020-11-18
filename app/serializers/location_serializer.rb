class LocationSerializer < ActiveModel::Serializer
  attributes :id, :postcode
  
  has_many :location_preferences
end
