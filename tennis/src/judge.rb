require_relative './game_stream'

class Judge
  attr_reader :game_stream

  def subscribes(game_stream)
    @game_stream = game_stream
  end
end