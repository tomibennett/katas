class PointsStream
  def initialize points
    @points_buffer = points
    @points_buffer_length = @points_buffer.length
    @current_point_index = 0
  end

  def self.from_buffer points
    PointsStream.new points
  end

  def register_judge(judge)
    @judge = judge
  end

  def get_point
    @current_point_index += 1
    @points_buffer[@current_point_index - 1]
  end

  def continue?
    @current_point_index < @points_buffer_length
  end
end