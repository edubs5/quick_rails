# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

json =ActiveSupport::JSON.decode(File.read('db/seeds/data.json'))

json.each do |player|
  Team.create(team_name: player["team"],
              city: player["city"],
              state: player["state"])

  Player.create(name: player["name"],
                position: player["position"],
                stats: player["stats"],
                rank: player["rank"],
                image: player["image"],
                age: player["age"],
                team_id: Team.where(team_name: player["team"])[0]["id"]
                )
end

