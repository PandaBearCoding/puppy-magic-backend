class CreateDistancePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :distance_preferences do |t|
      t.integer :user_id
      t.integer :distance_id
    end
  end
end
