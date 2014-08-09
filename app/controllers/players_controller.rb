class PlayersController < ApplicationController
  def index
    @teams = Team.all
    @players = Player.sorted
  end
end
