=begin
Write your code for the 'Sum Of Multiples' exercise in this file. Make the tests in
`sum_of_multiples_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sum-of-multiples` directory.
=end

# Given a number, find the sum of all the unique multiples 
# of particular numbers up to but not including that number.
class SumOfMultiples
  attr_accessor :numbers

  def initialize(*numbers)
    @numbers = numbers
  end

  # FIXME: this method is not passing the time limit in exercism
  def to(max)
    result = []

    # find multiples of initial numbers up to passed number
    @numbers.each do |n|
      i = n
      while i < max
        result.push(i) unless result.include?(i)
        i = i + n
      end
    end

    # return sum of multiples
    return 0 if result.empty?

    sum = 0
    result.each { |n| sum += n}
    sum
  end
end

sum_of_multiples = SumOfMultiples.new(2, 3, 5, 7, 11)
p sum_of_multiples.to(10_000) # => 39_614_537