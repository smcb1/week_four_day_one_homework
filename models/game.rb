class Game

  attr_accessor :player, :opponent

  def initialize(player, opponent)
    @player = player
    @opponent = opponent
    @game = [@player, @opponent]
    @result
    @p1
    @p2
  end

  def play()
    @p1 = @game[0][1].to_s
    @p2 = @game[1][1].to_s

    if @p1 == @p2
      return @result = "Draw"
    else
      return @result = "Not a draw"
    end

  end

end
