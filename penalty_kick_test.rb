gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "penalty_kick"

class PenaltyKickTest < MiniTest::Test

  def test_goalie_can_guess
    goalie = Goalie.new
    goalie.guess("L")
    assert_equal "L", goalie.dive
  end

  def test_valid_goalie_direction
    goalie = Goalie.new
    assert_raises ArgumentError do
      goalie.guess("A")
    end
  end

  def test_player_can_kick_left
    player = Player.new
    player.kick("L")
    assert_equal "L", player.aim
  end

  def test_player_can_kick_right
    player = Player.new
    player.kick("R")
    assert_equal "R", player.aim
  end

  def test_valid_kicker_direction
    player = Player.new
    assert_raises ArgumentError do
      player.kick("B")
    end
  end

  def test_player_can_score
    goalie = Goalie.new
    player = Player.new
    match = Match.new(goalie, player)
    goalie.guess("R")
    player.kick("L")
    assert_equal "Goal!!!", match.score
  end

  def test_goalie_can_block
    goalie = Goalie.new
    player = Player.new
    match = Match.new(goalie, player)
    goalie.guess("R")
    player.kick("R")
    assert_equal "Blocked", match.score
  end
end
