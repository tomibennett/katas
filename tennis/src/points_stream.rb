class PointsStream
  def initialize points
    @points = points
    @current_point_index = 0
  end

  def self.from_buffer points
    PointsStream.new points
  end

  def register_judge(judge)
    @judge = judge
  end

  def get_point
    point = @points[@current_point_index]

    @current_point_index += 1
    point
  end
end