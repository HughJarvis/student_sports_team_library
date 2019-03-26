require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test



  def test_team_name_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    assert_equal("Destroyers", team.team_name)
  end


  def test_players_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    assert_equal(["Simone", "Del", "Terry", "Ang"], team.players)
  end


  def test_coach_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    assert_equal("Mcguffin", team.coach)
  end

  def test_coach_setter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    team.coach = "Simpson"
    assert_equal("Simpson", team.coach)
  end


  def test_add_player
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    team.add_player("Alice")
    assert_equal(5, team.players.length)
  end

  def test_check_player_found()
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    assert_equal(true, team.player_is_in_team("Terry"))
    assert_equal(false, team.player_is_in_team("Gerald"))
  end

  def test_points_start_at_0
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    assert_equal(0, team.points)
  end


  def test_points_increase_win
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    team.result("win")
    assert_equal(3, team.points)
  end


  def test_points_stay_same_lose
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin")
    team.result("lose")
    assert_equal(0, team.points)
  end



  # def test_result
  #   team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
  #   @team.result("win")
  #   assert_equal(6, team.points)
  #   @team.result("lose")
  #   assert_equal(3, team.points)
  # end
end
