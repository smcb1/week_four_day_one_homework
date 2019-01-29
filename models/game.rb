class Game

  def self.play(hand1, hand2)
       return "It's a draw!" if hand1 == hand2

       win_conditions = {
           "rock" => "scissors",
           "scissors" => "paper",
           "paper" => "rock"
       }

       hand_one_beats = win_conditions[hand1]

       if hand_one_beats == hand2
           return "#{hand1.capitalize} wins!"
       else
           return "#{hand2.capitalize} wins!"
       end
   end

   def self.random_choice
     return %w{rock paper scissors}.sample
   end

end
