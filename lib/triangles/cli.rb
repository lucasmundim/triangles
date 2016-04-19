module Triangles
  class Cli
    def self.run args
      triangle = Triangles::Triangle.new *args
      if triangle.valid?
        puts triangle.classification
      else
        puts usage
        exit(1)
      end
    end

    def self.usage
      <<-USAGE
Usage:
#{$PROGRAM_NAME} sideA sideB sideC

All sides must be numbers
      USAGE
    end
  end
end
