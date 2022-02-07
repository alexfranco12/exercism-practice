=begin
Write your code for the 'Difference Of Squares' exercise in this file. Make the tests in
`difference_of_squares_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/difference-of-squares` directory.
=end

# Find the difference between the square of the sum and 
# the sum of the squares of the first N natural numbers.

class Squares
  attr :side

  def initialize(side)
    @side = side
  end

  def square_of_sum
    sum = 0
    n = 1
    while n <= @side
      sum += n
      n += 1
    end

    sum**2
  end

  def sum_of_squares
    sum = 0
    n = 1
    while n <= @side
      sum += n**2
      n += 1
    end

    sum
  end

  def difference
    self.square_of_sum - self.sum_of_squares
  end
end

p Squares.new(5).square_of_sum # => 225
p Squares.new(5).sum_of_squares # => 55
p Squares.new(5).difference # => 170