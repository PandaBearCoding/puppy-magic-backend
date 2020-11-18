class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :profile_picture
      t.string :status
      t.integer :age
      t.string :postcode
      t.text :description
      t.string :organization
      t.string :breed
      t.string :color
      t.string :coat_length
      t.string :size
      t.string :gender
      t.boolean :good_with_cats
      t.boolean :good_with_dogs
      t.boolean :good_with_children
      t.boolean :house_trained
      t.boolean :spayed_neutered
      t.boolean :special_needs

      t.timestamps
    end
  end
end
