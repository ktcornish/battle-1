class Game
  attr_reader :player1, :player2, :turn, :not_turn
# not turn not tested & attack ha smore responsabilities

def initialize(player1, player2)
  @player1 = player1
  @player2 = player2
  @turn = player1
  @not_turn = player2
end

def self.instance
  @game
end

def self.create(player1, player2)
  @game = Game.new(player1, player2)
end

def attack(player)
  player.receive_damage
  switch_turn
end

def switch_turn
  if @turn == player1
    @turn = player2
    @not_turn = player1
  else
    @turn = player1
    @not_turn = player2
  end
end

end
