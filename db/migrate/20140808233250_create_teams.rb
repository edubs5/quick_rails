class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string "team_name"
      t.string "city"
      t.string "state"

      t.timestamps
    end
  end
end
