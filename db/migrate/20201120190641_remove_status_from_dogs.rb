class RemoveStatusFromDogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :dogs, :status, :string
  end
end
