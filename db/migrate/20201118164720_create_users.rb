class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :profile_picture
      t.string :postcode
      t.integer :age
      t.string :phone_number
      t.string :email
      t.text :description
      t.string :housing_type
      t.string :has_yard
      t.string :near_park
      t.string :lifestyle

      t.timestamps
    end
  end
end
