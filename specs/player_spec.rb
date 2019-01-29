require 'minitest/autorun'
require 'minitest/rg'
require 'pry'
require_relative '../models/player'

class TestPlayer < Minitest::Test

  def setup
    @player = Player.new("Colin", "Rock")
    @opponent = Player.new("Hal", "Scissors")
  end

  def test_player_name
    assert_equal("Colin", @player.name)
  end

  def test_player_weapon
    assert_equal("Scissors", @opponent.weapon)
  end

end
