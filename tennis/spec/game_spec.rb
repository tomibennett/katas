require_relative '../src/game'

RSpec.describe Game do
  describe 'games scoring rules' do
    it 'has five points' do
      expect(described_class::SCORING_RULES.keys.length).to eq 5
    end

    it 'has the first point set to "love"' do
      expect(described_class::SCORING_RULES[0]).to eq 'love'
    end
  end
end