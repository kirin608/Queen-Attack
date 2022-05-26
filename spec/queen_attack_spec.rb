require_relative '../queen_attack'

RSpec.describe('Array#queen_attack?') do
  describe '#quin_attack' do
    it ('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
      expect(queen_attack([2, 3])).to(eq(false))
    end
    it ('is true if the coordinates are  horizontally, vertically, or diagonally in line with each other') do
      expect(queen_attack([4, 4])).to(eq(true))
    end
    it ('is true if the coordinates are  horizontally in line with each other') do
      expect(queen_attack([1, 4])).to(eq(true))
    end
    it ('is true if the coordinates are  vertically in line with each other') do
      expect(queen_attack([5, 1])).to(eq(true))
    end
  end
end