require_relative './points_stream'

class Judge
  def subscribes(points_stream)
    @points_stream = points_stream
  end

  def next_point
    '0'
  end
end
