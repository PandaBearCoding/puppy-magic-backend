class RemoveNameFromMatches < ActiveRecord::Migration[6.0]
  def change
    remove_column :matches, :name, :string
  end
end
