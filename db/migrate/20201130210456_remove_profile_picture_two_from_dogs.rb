class RemoveProfilePictureTwoFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :profile_picture_two, :string
  end
end
