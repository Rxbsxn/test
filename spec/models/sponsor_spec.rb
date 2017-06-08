require 'rails_helper'

RSpec.describe Sponsor, type: :model do
  describe 'Sponsor count' do
    it 'has none user inside' do
      expect(Sponsor.count).to eq 0
    end
    it 'one sponsor in database' do
      create(:sponsor)
      expect(Sponsor.count).to eq 1
    end
    it 'hundred sponsors in database' do
      100.times { create(:sponsor) }
      expect(Sponsor.count).to eq 100
    end
  end

  describe 'Sponsor is valid' do
    let(:sponsor) { create(:sponsor) }
    it 'if valid should return true' do
      expect(sponsor).to be_valid
    end
  end

  describe "Sponsor's attribs" do
    let(:sponsor) { create(:sponsor) }
    it 'returns sponsor name' do
      expect(sponsor.name).to match(sponsor.name)
    end
  end
end
