class PointsStream
  def initialize points
    @points = points
  end

  def self.from_buffer points
    PointsStream.new points
  end
end