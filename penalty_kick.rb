module Valid
  def valid_directions
    ['L', 'R']
  end
end

class Goalie
  include Valid
  attr_reader :dive
  
  def guess(dive)
    if valid_directions.include?(dive)
      @dive = dive
    else
      raise ArgumentError.new("Not a valid direction")
    end
  end
end

class Player
  include Valid
  attr_reader :aim

  def kick(aim)
    if valid_directions.include?(aim)
      @aim = aim
    else
      raise ArgumentError.new("Not a valid direction")
    end
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

