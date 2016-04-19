require 'spec_helper'

describe Triangles::Triangle do
  describe '#classification' do
    def triangle(*args)
      described_class.new(*args).classification
    end

    it 'classifies as equilateral if all sides are equal' do
      expect(triangle(1,     1,   1)).to be :equilateral
      expect(triangle(2,     2,   2)).to be :equilateral
      expect(triangle(3.1, 3.1, 3.1)).to be :equilateral
    end

    it 'classifies as isosceles if only two sides are equal' do
      expect(triangle(1,   1,   2)).to be :isosceles
      expect(triangle(1, 2.1, 2.1)).to be :isosceles
      expect(triangle(3,   1,   3)).to be :isosceles
    end

    it 'classifies as scalene if all sides are different' do
      expect(triangle(  1, 2, 3)).to be :scalene
      expect(triangle(3.2, 2, 1)).to be :scalene
      expect(triangle(  1, 3, 2)).to be :scalene
    end
  end

  describe '#valid?' do
    it 'returns true for a valid triangle' do
      expect(described_class.new(1, 2, 3).valid?).to be_truthy
      expect(described_class.new(1.1, 2.2, 3.3).valid?).to be_truthy
    end

    it 'returns false if there is any non number side' do
      expect(described_class.new(1, 3, "non_number").valid?).to be_falsey
    end

    it 'returns false if it does not have three sides' do
      expect(described_class.new(1, 2).valid?).to be_falsey
      expect(described_class.new(1, 2, 3, 4).valid?).to be_falsey
    end
  end
end
