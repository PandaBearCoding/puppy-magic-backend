class DogSerializer < ActiveModel::Serializer
  attributes :id, :name, :profile_picture, :age, :postcode, :description, :organization, :breed, :color, :coat_length, :size, :gender, :distance, :good_with_cats, :good_with_dogs, :good_with_children, :house_trained, :spayed_neutered, :special_needs

  has_many :matches
end
