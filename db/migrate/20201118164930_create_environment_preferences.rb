class CreateEnvironmentPreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :environment_preferences do |t|
      t.integer :user_id
      t.integer :environment_id

      t.timestamps
    end
  end
end
