class LocationPreferencesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :location_id

  has_one :user
  has_one :location
end
