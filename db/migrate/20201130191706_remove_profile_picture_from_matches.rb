class RemoveProfilePictureFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :profile_picture, :string
  end
end
