class AddDistanceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :distance, :integer
  end
end
