class AddNameToMatches < ActiveRecord::Migration[6.0]
  def change
    add_column :matches, :name, :string
  end
end
