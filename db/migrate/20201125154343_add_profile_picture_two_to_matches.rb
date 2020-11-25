class AddProfilePictureTwoToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :profile_picture_two, :string
  end
end
