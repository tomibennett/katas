require_relative '../src/game'

RSpec.describe Game do
  describe 'games points rules' do
    it 'has five points' do
      expect(described_class::POINTS.keys.length).to eq 5
    end

    it 'has the first point set to "love"' do
      expect(described_class::POINTS[0]).to eq 'love'
    end

    it 'has the second point set to "15"' do
      expect(described_class::POINTS[1]).to eq '15'
    end

    it 'has the third point set to "30"' do
      expect(described_class::POINTS[2]).to eq '30'
    end
  end
end