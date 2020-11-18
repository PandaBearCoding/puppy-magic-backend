class CreateLocationPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :location_preferences do |t|
      t.integer :user_id
      t.integer :location_id

      t.timestamps
    end
  end
end
