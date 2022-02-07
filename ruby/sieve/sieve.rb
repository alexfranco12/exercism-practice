=begin
Write your code for the 'Sieve' exercise in this file. Make the tests in
`sieve_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/sieve` directory.
=end

# TODO: Use the Sieve of Eratosthenes to find all the primes 
# from 2 up to a given number.

class Sieve
  attr :number

  def initialize(number)
    @number = number
  end

  # TODO: refactor code so that this function runs less loops.
  def primes
    primes = []
    composite = []
    i = 2

    # iterate from 2 to given number
    while i <= @number
      primes.push(i)

      # mark all multiples of i as composite or not prime
      num = i 
      while num <= @number
        composite.push(num)
        num += i
      end

      while composite.include?(i)
        i += 1
        break if i > @number
      end
    end

    # result array
    primes

  end
end

p Sieve.new(10).primes # => [2, 3, 5, 7]
p Sieve.new(13).primes # => [2, 3, 5, 7, 11, 13]