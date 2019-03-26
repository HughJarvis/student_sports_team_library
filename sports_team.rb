class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end


  # def get_team_name
  #   return @team_name
  # end
  #
  # def get_players
  #   return @players
  # end
  #
  # def get_coach
  #   return @coach
  # end
  #
  # def set_coach(coach)
  #   @coach = coach
  # end

def
end


  def add_player(new_player)
    @players.push(new_player)
  end



  def player_is_in_team(name)
    return @players.include?(name)

    # for player in @players
    #   if player == name
    #     return true
    #
    #   end
    # end
    # return false
  end





  def result(win_or_lose)
    @points += 3 if win_or_lose == "win"
  end
  

end
