require_relative '../src/judge'

RSpec.describe Judge do
  let(:game_stream) { GameStream.from_buffer '01' }

  describe '#subscribes' do
    let(:judge) { described_class.new }
    it 'subscribes to a game stream' do
      expect(judge.subscribes game_stream).to eq game_stream
    end
  end

  describe '#next_point' do
    let(:judge) { described_class.new }

    before do
      judge.subscribes game_stream
    end

    it 'retrieves a point won by a side' do
      expect(judge.next_point).to eq '0'
    end
  end
end