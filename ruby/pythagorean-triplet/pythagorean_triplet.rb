=begin
Write your code for the 'Pythagorean Triplet' exercise in this file. Make the tests in
`pythagorean_triplet_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pythagorean-triplet` directory.
=end

class Triplet
  attr_accessor :numbers

  def initialize(*numbers)
    @numbers = numbers.sort!
  end

  def sum
    sum = 0
    @numbers.each {|e| sum += e}
    sum
  end

  def product
    sum = 1
    @numbers.each {|e| sum *= e}
    sum
  end

  def pythagorean?
    @numbers[0] < @numbers[1] && @numbers[1] < @numbers[2] && (@numbers[0]**2 + @numbers[1]**2 == @numbers[2]**2) 
  end

  # TODO: find pythagorean triplets given constraints
  def self.where(**args)
    min_factor = args[:min_factor] || 0
    max_factor = args[:mix_factor] || 0
    sum = args[:sum] || 0

    # while @numbers.max < max_factor

    # end
  end
  
end

triplets = Triplet.where(mix_factor: 10)
# products = triplets.map(&:product).sort