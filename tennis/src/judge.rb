require_relative './game_stream'

class Judge
  attr_reader :game_stream

  def subscribes(game_stream)
    @game_stream = game_stream
  end

  def next_point
    '0'
  end
end