module ApplicationHelper

  def next_page
    position = locate_player(@player.id)
    next_num = (position == @all_players.count-1) ? 0 : position + 1
    @all_players.all[next_num].id
  end

  def previous_page
    position = locate_player(@player.id)
    prev_num = (position == 0) ? @all_players.count-1 : position - 1
    @all_players.all[prev_num].id
  end

  def locate_player(id)
    i = 0;
    @all_players.each do |player|
      player.id == id ? (return i) : (i += 1)
    end
  end

end
