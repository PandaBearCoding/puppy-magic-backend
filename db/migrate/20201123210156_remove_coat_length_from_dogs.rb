class RemoveCoatLengthFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :coat_length, :string
  end
end
