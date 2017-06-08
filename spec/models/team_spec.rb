require 'rails_helper'

RSpec.describe Team, type: :model do
  describe 'Team count' do
    it 'has none team inside' do
      expect(Team.count).to eq 0
    end
    it 'one team in database' do
      create(:team)
      expect(Team.count).to eq 1
    end
    it 'hundred team in database' do
      100.times { create(:team) }
      expect(Team.count).to eq 100
    end
  end

  describe 'Team is valid' do
    let(:team) { create(:team) }
    it 'if valid should return true' do
      expect(team).to be_valid
    end
  end

  describe "Team's attribs" do
    let(:team) { create(:team) }
    it 'returns team name' do
      expect(team.name).to match(team.name)
    end
  end
end
