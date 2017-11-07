require_relative '../src/side'

RSpec.describe Side do
  describe '.new' do
    it 'has zero point when instantiated' do
      expect(described_class.new.points).to eq 0
    end
  end

  describe '#score' do
    it 'increments the total of points by one' do
      side = described_class.new
      side.score

      expect(side.points).to eq 1
    end
  end
end