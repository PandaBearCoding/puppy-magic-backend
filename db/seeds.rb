# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

User.destroy_all
Dog.destroy_all

##JOIN
Match.destroy_all

Breed.destroy_all
Environment.destroy_all
Location.destroy_all

##JOINS
BreedPreference.destroy_all
EnvironmentPreference.destroy_all
LocationPreference.destroy_all

user1 = User.create(username: "mrs161", password: "abc123", name: "Madeline Rose Stalter", profile_picture: "https://cdn.mainichi.jp/vol1/2020/08/31/20200831p2g00m0fe122000p/8.jpg?1", postcode: "11222", age: 25, phone_number: "315-663-7462", email: "MadelineRose16@outlook.com", description: "I exercise daily and would love to have a running buddy! I live near multiple parks in Brookyln (Transmitter, Domino, and Prospect to name a few) and regularly commute to Central Park. I love to cuddle and want a dog that also likes that.", housing_type: "Apartment", has_yard: "No", near_park: "Yes", lifestyle: "Active")

dog1 = Dog.create(name: "Sidney", profile_picture: "https://blackthornkennel.com/images/puppies/Aa-Litter/IMG_7144.jpg", age: 2, postcode: "11222", description: "The sweetest girl you'll ever meet! She is happiest when she is snuggled up in your arms. She also LOVES to play fetch, but knows how to settle down while in the house. She is good with cats, dogs, and children.", organization: "Bidawea Animal Rescue", breed: "German Shepherd", color: "black and tan", coat_length: "medium", size: "large", gender: "female", good_with_cats: true, good_with_dogs: true, good_with_children: true, house_trained: true, spayed_neutered: true, special_needs: false, distance: "1")
dog2 = Dog.create(name: "Stockli", profile_picture: "https://img.dog-learn.com/dog-breeds/treeing-tennessee-brindle/treeing-tennessee-brindle-i12-sz4.jpg", age: 1, postcode: "11222", description: "He is the pacifist of our shelter; many of our staff members call him Buddha! He is incredibly sweet and gentle to everyone that he comes in contact with (animals and humans alike). He is a little scared at first, but once he gets to know and trust you he will be your best friend. He loves to cuddle and will make getting up early a little harder. A trade off we're sure you'll take!", organization: "Bidawea Animal Rescue", breed: "Treeing Tennessee Brindle", color: "brindle", coat_length: "short", size: "medium", gender: "male", good_with_cats: true, good_with_dogs: true, good_with_children: true, house_trained: true, spayed_neutered: true, special_needs: false, distance: "2")

match1 = Match.create(user_id: user1.id, dog_id: dog1.id)
match2 = Match.create(user_id: user1.id, dog_id: dog2.id)

breed1 = Breed.create(primary: "German Shepherd")
breed2 = Breed.create(primary: "Treeing Tennessee Brindle")

breedpreference1 = BreedPreference.create(user_id: user1.id, breed_id: breed1.id)
breedpreference2 = BreedPreference.create(user_id: user1.id, breed_id: breed2.id)

environment1 = Environment.create(good_with: "cats")
environment2 = Environment.create(good_with: "dogs")
environment3 = Environment.create(good_with: "children") 

environmentpreference1 = EnvironmentPreference.create(user_id: user1.id, environment_id: environment1.id)
environmentpreference2 = EnvironmentPreference.create(user_id: user1.id, environment_id: environment2.id)
environmentpreference3 = EnvironmentPreference.create(user_id: user1.id, environment_id: environment3.id)


location1 = Location.create(postcode: "11222")
location2 = Location.create(postcode: "13066")

locationpreference1 = LocationPreference.create(user_id: user1.id, location_id: location1.id)
locationpreference2 = LocationPreference.create(user_id: user1.id, location_id: location2.id)
