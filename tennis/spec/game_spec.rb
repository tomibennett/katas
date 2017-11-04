require_relative '../src/game'

RSpec.describe Game do
  describe 'games points rules' do
    it 'has five points' do
      expect(described_class::POINTS.keys.length).to eq 5
    end

    it 'has the first point set to "love"' do
      expect(described_class::POINTS[0]).to eq 'love'
    end
  end
end