require_relative '../src/judge'

RSpec.describe Judge do
  let(:points_stream) { PointsStream.from_buffer '01' }

  describe '#subscribes' do
    let(:judge) { described_class.new }
    it 'subscribes to a points stream' do
      expect(judge.subscribes points_stream).to eq points_stream
    end
  end

  describe '#next_point' do
    let(:judge) { described_class.new }

    before do
      judge.subscribes points_stream
    end

    it 'retrieves a point won by a side' do
      expect(judge.next_point).to eq '0'
    end
  end
end