class PointsStream
  def initialize points
    @points = points
  end

  def self.from_buffer points
    PointsStream.new points
  end

  def register_judge(judge)
    @judge = judge
  end
end