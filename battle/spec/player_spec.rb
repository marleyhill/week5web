require 'player'

describe 'Player' do
  subject(:dave) { Player.new('Dave') }
  subject(:mittens) { Player.new('Mittens') }

  describe 'name' do
    it 'returns the name' do
      expect(dave.name).to eq "Dave"
    end
  end

  describe 'hit points' do
    it "shows player's hit points" do
      expect(dave.hit_points).to eq Player::DEFAULT_POINTS
    end
  end

  describe 'attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damage)
      dave.attack(mittens)
    end
  end

  describe 'receive damage' do
    it 'reduces points by 10' do
      expect{ dave.attack(mittens) }.to change {mittens.hit_points}.by(-10)
    end
  end

end
