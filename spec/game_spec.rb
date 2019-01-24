

describe Game do
let(:player1) { double(:player1, hp: 60, name: "name") }
let(:player2) { double(:player2, hp: 60, name: "name") }
let(:game) { Game.new(player1, player2) }

describe 'game start' do
  it 'take player 1 and player 2 instance names' do
  expect(game.player1).to eq(player1)
  expect(game.player2).to eq(player2)
    end
  end

  describe '#attack' do
    it "tells a player to take damage" do
      expect(player2).to receive :receive_damage
      game.attack(player2)
    end
  end

  describe '#player turn' do
    it 'tells the player turn' do
      expect(game.turn).to eq(player1)
    end
  end

  describe '#change character turn' do
    it 'switches the player turns' do
      game.switch_turn
      expect(game.turn).to eq(player2)
    end
  end

end
