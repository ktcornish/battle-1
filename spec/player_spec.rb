require 'player'

describe Player do
  let(:ross) { Player.new('Ross') }
  let(:player2) { double(:player2)}
 describe 'name method' do
   it 'returns name' do
     expect(ross.name).to eq('Ross')
   end
 end
 describe '#hp' do
   it 'returns players hp' do
     expect(ross.hp).to eq Player::DEFAULT_HP
   end
 end

 describe "#receive_damage" do
   it "deducts a random amount of HP" do
     srand(1)
     ross.receive_damage
     expect(ross.hp).to eq (Player::DEFAULT_HP - 7)
   end
 end
end
