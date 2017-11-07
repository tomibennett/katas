require_relative '../src/side'

RSpec.describe Side do
  describe '.new' do
    it 'has zero point when instantiated' do
      expect(described_class.new.points).to eq 0
    end
  end
end