class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :password, :name, :profile_picture, :postcode, :age, :phone_number, :email, :description, :housing_type, :has_yard, :near_park, :lifestyle, :matched_dogs, :breed_pref, :environment_pref, :location_pref
  
  has_many :matches
  has_many :breed_preferences
  has_many :environment_preferences
  has_many :location_preferences
end
