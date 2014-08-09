class AddAgeImageNameRankToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :age, :integer
    add_column :players, :name, :string
    add_column :players, :image, :string
    add_column :players, :rank, :integer
  end
end
