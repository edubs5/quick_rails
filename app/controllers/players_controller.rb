class PlayersController < ApplicationController

  def index
    @teams = Team.all
    @players = Player.sorted
  end

  def show
    @player = Player.find(params[:id])
    @all_players = Player.all
    @team = Team.find(Player.find(params[:id]).team_id)
  end

end
