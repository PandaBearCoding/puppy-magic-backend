class RemoveDistanceFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :distance, :string
  end
end
