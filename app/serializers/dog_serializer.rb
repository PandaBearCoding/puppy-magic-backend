class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_picture, :status, :age, :postcode, :description, :organization, :breed, :color, :coat_length, :size, :gender, :good_with_cats, :good_with_dogs, :good_with_children, :house_trained, :spayed_neutered, :special_needs

  has_many :matches
end
