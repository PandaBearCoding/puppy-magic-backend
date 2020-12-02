class AddUrlToDogs < ActiveRecord::Migration[6.0]
  def change
    add_column :dogs, :url, :string
  end
end
