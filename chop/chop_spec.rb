require_relative './chop'

RSpec.describe Chop do
  describe '#chop' do
    it "handles empty array" do
      expect(Chop.chop(3, [])).to eq(-1)
    end

    it "returns -1 when item is not in array" do
      expect(Chop.chop(0, [1, 2, 3])).to eq(-1)
    end

    it "returns the position of the searched item in a sorted array" do
      expect(Chop.chop(0, [0, 1, 2])).to eq(0)
      expect(Chop.chop(1, [0, 1, 2])).to eq(1)
      expect(Chop.chop(50, (0..100).to_a)).to eq(50)
      expect(Chop.chop(74, (0..100).to_a)).to eq(74)
      expect(Chop.chop(74, (10..100).to_a)).to eq(64)
      expect(Chop.chop(8, (0..10).step(2).to_a)).to eq(4)
    end
  end
end
