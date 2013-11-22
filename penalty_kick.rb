class Goalie
  attr_reader :dive
  
  def guess(dive)
    @dive = dive
  end
end

class Player
  attr_reader :aim

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

  def score
    if goalie.dive == player.aim
      "Blocked"
    else
      "Goal!!!"
    end
  end
end
