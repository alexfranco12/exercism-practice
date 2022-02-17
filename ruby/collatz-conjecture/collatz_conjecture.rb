=begin
Write your code for the 'Collatz Conjecture' exercise in this file. Make the tests in
`collatz_conjecture_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/collatz-conjecture` directory.
=end

class CollatzConjecture
  attr_accessor

  def self.steps(number)
    @number = number
    count = 0

    # Take any positive integer n greater than 1
    raise ArgumentError.new if number <= 0
    n = number

    while n > 1
      if n % 2 == 0 # If n is even, divide n by 2
        n = n / 2
      else # If n is odd, multiply n by 3 and add 1 
        n = (n * 3) + 1
      end

      count += 1
    end

    # return the number of steps required to reach 1
    count
  end
end

p CollatzConjecture.steps(16) # => 4
p CollatzConjecture.steps(-15) # raise exception

