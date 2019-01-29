require 'minitest/autorun'
require 'minitest/rg'
require 'pry'
require_relative '../models/game'
require_relative '../models/player'

class TestGame < Minitest::Test

  def setup
    @player = Player.new("Colin", "Rock")
    @opponent = Player.new("Hal", "Paper")
    @game = [@player, @opponent]
    #@result = ''
  end

  def test_game_has_players
    assert_equal("Colin", @game[0].name)
    assert_equal("Paper", @game[1].weapon)
  end

  def test_play__win
  end

  def test_play__lose
  end

  def test_play__draw
    new_game = Game.new(@game[0].weapon, @game[1].weapon)
    @result = new_game.play()
    assert_equal("Draw", @result)
  end

end
