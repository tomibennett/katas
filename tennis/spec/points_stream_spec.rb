require_relative '../src/points_stream'

RSpec.describe PointsStream do
  describe '.from_buffer' do
    context 'reads score from a points buffer' do
      it 'instantiates a new points stream' do
        expect(described_class.from_buffer '').to be_a described_class
      end
    end
  end

  describe '#register_judge' do
    let(:points_stream) { described_class.from_buffer '' }
    let(:judge) { Judge.new }

    it 'registers a judge that will announce points' do
      expect(points_stream.register_judge judge).to eq judge
    end
  end

  describe '#get_point' do
    let(:points) { '010101' }
    let(:points_stream) { described_class.from_buffer points }

    it 'retrieves one by one all points' do
      retrieved_points = ''

      while points_stream.continue? do
        retrieved_points << points_stream.get_point
      end

      expect(retrieved_points).to eq points
    end
  end
end