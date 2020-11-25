class AddDistanceToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :distance, :integer
  end
end
