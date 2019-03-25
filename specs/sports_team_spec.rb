require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team.rb')

class SportsTeamTest < MiniTest::Test



  def test_team_name_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    assert_equal("Destroyers", team.team_name)
  end


  def test_players_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    assert_equal(["Simone", "Del", "Terry", "Ang"], team.players)

  end


  def test_coach_getter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    assert_equal("Mcguffin", team.coach)
  end

  def test_coach_setter
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    team.coach = "Simpson"
    assert_equal("Simpson", team.coach)
  end


  def test_add_player
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    team.add_player("Alice")
    assert_equal(5, team.players.length)
  end
#this one's not working
  def test_check_player
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    assert_equal("Yes!", team.player_is_in_team("Terry"))
    assert_equal("No!", team.player_is_in_team("Gerald"))
  end

  def test_result
    team = SportsTeam.new("Destroyers", ["Simone", "Del", "Terry", "Ang"], "Mcguffin", 3)
    team.result("win")
    assert_equal(6, team.points)
    team.result("lose")
    assert_equal(3, team.points)
  end
end
