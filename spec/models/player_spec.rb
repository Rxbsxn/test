require 'rails_helper'

RSpec.describe Player, type: :model do
  describe 'Players count' do
    it 'has none user inside' do
      expect(Player.count).to eq 0
    end
    it 'one player in database' do
      create(:player)
      expect(Player.count).to eq 1
    end
    it 'hundred player in database' do
      100.times { create(:player) }
      expect(Player.count).to eq 100
    end
  end

  describe 'Player is valid' do
    let(:player) { create(:player) }
    it 'if valid should return true' do
      expect(player).to be_valid
    end
  end

  describe "User's attribs" do
    let(:player) { create(:player) }
    it 'returns player first name' do
      expect(player.first_name).to match(player.first_name)
    end

    it 'returns player last name' do
      expect(player.last_name).to match(player.last_name)
    end

    it 'returns player born' do
      expect(player.born).to match(player.born)
    end
  end
end
