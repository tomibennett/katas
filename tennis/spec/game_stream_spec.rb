require_relative '../src/game_stream'

RSpec.describe GameStream do
  describe '.from_buffer' do
    context 'reads score from a points buffer' do
      it 'instantiates a new game stream' do
        expect(described_class.from_buffer '').to be_a described_class
      end
    end
  end
end