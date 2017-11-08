require_relative '../src/points_stream'

RSpec.describe PointsStream do
  describe '.from_buffer' do
    context 'reads score from a points buffer' do
      it 'instantiates a new points stream' do
        expect(described_class.from_buffer '').to be_a described_class
      end
    end
  end
end