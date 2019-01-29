require 'minitest/autorun'
require 'minitest/rg'
require 'pry'
require_relative '../models/game'
require_relative '../models/player'

class TestGame < Minitest::Test

  def test_draw
       result = Game.play("rock", "rock")
       assert_equal(result, "It's a draw!")
   end

   def test_paper_wins_vs_rock
       result = Game.play("paper", "rock")
       assert_equal(result, "Paper wins!")
   end

   def test_rock_wins_vs_scissors
       result = Game.play("scissors", "rock")
       assert_equal(result, "Rock wins!")
   end

end
