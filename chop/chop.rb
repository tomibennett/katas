module Chop
  def self.chop(item, array, pos=0)
    if item == array.first
      return pos
    elsif array.length > 1
      half = array.length / 2
      found = self.chop(item, array[0..half - 1], pos)
      if found > -1
        return found
      end
      return self.chop(item, array[half..array.length - 1], pos + half)
    end
    return -1
  end
end
