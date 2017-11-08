require_relative '../src/judge'

RSpec.describe Judge do
  let(:game_stream) { GameStream.from_buffer '01' }

  describe '#subscribes' do
    it 'subscribes to a game stream' do
      judge = described_class.new
      judge.subscribes game_stream

      expect(judge.game_stream).to eq game_stream
    end
  end
end