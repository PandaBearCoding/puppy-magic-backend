class RemoveProfilePictureTwoFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :profile_picture_two, :string
  end
end
