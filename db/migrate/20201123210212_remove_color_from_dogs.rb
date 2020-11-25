class RemoveColorFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :color, :string
  end
end
