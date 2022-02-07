=begin
Write your code for the 'Triangle' exercise in this file. Make the tests in
`triangle_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/triangle` directory.
=end

class Triangle
  attr_accessor :sides

  def initialize(sides)
    @sides = sides
  end

  def is_triangle?
    sides = @sides.sort
    sides[0] + sides[1] >= sides[2] && !sides.include?(0)
  end

  # Determine if a triangle is equilateral, isosceles, or scalene.
  def equilateral?
    return false unless self.is_triangle?
    @sides[0] == @sides[1] && @sides[1] == @sides[2]
  end

  def isosceles?
    return false unless self.is_triangle?
    @sides[0] == @sides[1] || @sides[1] == @sides[2] || @sides[0] == @sides[2]
  end

  def scalene?
    return false unless self.is_triangle?
    @sides[0] != @sides[1] && @sides[1] != @sides[2]
  end
end

triangle = Triangle.new([2, 3, 2])
p triangle.equilateral? # => false

triangle = Triangle.new([4, 3, 4])
p triangle.isosceles? # => true

triangle = Triangle.new([0.5, 0.4, 0.6])
p triangle.scalene? # => true

triangle = Triangle.new([7, 3, 2])
p triangle.scalene? # => false