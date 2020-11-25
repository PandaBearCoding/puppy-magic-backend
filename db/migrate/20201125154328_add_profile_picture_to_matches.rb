class AddProfilePictureToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :profile_picture, :string
  end
end
