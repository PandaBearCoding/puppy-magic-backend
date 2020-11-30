class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :profile_picture, :postcode, :age, :phone_number, :email, :description, :housing_type, :has_yard, :near_park, :matched_dogs, :location_pref, :distance_pref
  
  has_many :matches
  has_many :location_preferences
  has_many :distance_preferences
end
