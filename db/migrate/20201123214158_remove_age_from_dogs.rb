class RemoveAgeFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :age, :integer
  end
end
