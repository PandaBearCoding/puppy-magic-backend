class AddProfilePictureTwoToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :profile_picture_two, :string
  end
end
