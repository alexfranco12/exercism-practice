=begin
Write your code for the 'Grains' exercise in this file. Make the tests in
`grains_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grains` directory.
=end

# Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

class Grains
  def self.total
    (self.square(64) * 2) - 1
  end

  def self.square(square)
    raise ArgumentError.new if square < 1 || square > 64
    grain = 1
    (square - 1).times { grain *= 2 }
    grain
  end
end

# p Grains.square(0)
# p Grains.square(65)
p Grains.square(2) # => 2
p Grains.square(16) # => 32_768