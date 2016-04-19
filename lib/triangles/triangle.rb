module Triangles
  class Triangle
    def initialize(*sides)
      @sides = sides
    end

    def valid?
      @sides.size == 3 &&
      @sides.all? { |side| true if Float(side) rescue false } # all sides are numbers
    end

    def classification
      case @sides.uniq.size
      when 1
        :equilateral
      when 2
        :isosceles
      when 3
        :scalene
      end
    end
  end
end
