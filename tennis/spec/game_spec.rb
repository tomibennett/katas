require_relative '../src/game'

RSpec.describe Game do
  describe 'games points rules' do
    it 'has the first point set to "love"' do
      expect(described_class::POINTS[0]).to eq 'love'
    end

    it 'has the second point set to "15"' do
      expect(described_class::POINTS[1]).to eq '15'
    end

    it 'has the third point set to "30"' do
      expect(described_class::POINTS[2]).to eq '30'
    end

    it 'has the fourth point set to "40"' do
      expect(described_class::POINTS[3]).to eq '40'
    end

    it 'has the fifth point set to nothing' do
      expect(described_class::POINTS[4]).to eq nil
    end
  end
end