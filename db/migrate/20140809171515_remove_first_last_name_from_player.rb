class RemoveFirstLastNameFromPlayer < ActiveRecord::Migration
  def change
    remove_column :players, :first_name, :string
    remove_column :players, :last_name, :string
  end
end
