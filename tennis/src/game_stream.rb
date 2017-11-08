class GameStream
  def initialize points
    @points = points
  end

  def self.from_buffer points
    GameStream.new points
  end
end