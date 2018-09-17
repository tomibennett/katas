require_relative '../src/game'

RSpec.describe Game do
  describe '.new' do
    let(:judge) { double('Judge') }
    let(:points_stream) { double('PointsStream') }

    it 'instantiates a game when a judge and a points stream is provided' do
      expect(Game.new(judge: judge, points_stream: points_stream)).to be_an_instance_of Game
    end
  end
end