class Goalie
  def guess(dive)
    @dive = dive
  end
end

class Player
  def kick(aim)
    @aim = aim
  end
end

class Match
  attr_accessor :goalie, :player
  def initialize(goalie, player)
    @goalie = goalie
    @player = player
  end

  def self.score
    if @dive == @aim
      "Blocked"
    elsif @dive != @aim
      "Goal!!!"
    else
      "Error"
    end
  end
end


