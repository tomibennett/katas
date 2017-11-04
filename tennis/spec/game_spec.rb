require_relative '../src/game'

RSpec.describe Game do
  describe 'games scoring rules' do
    it 'has four points' do
      expect(described_class::SCORING_RULES.keys.length).to eq 5
    end
  end
end