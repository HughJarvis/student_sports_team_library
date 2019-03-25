class SportsTeam
  attr_accessor :team_name, :players, :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
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

  def add_player(new_player)
    @players.push(new_player)
  end

#something wrong with if statement in next two

  def player_is_in_team(name)
    for player in @players
      if player = name
        return "Yes!"
      else
        return "No!"
      end
    end
  end

  def result(win_or_lose)
    if win_or_lose = "win"
      @points += 3
    end
  end

end
