=begin
Write your code for the 'Nth Prime' exercise in this file. Make the tests in
`nth_prime_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/nth-prime` directory.
=end

# Given a number n, determine what the nth prime is.
class Prime

  def self.nth(number)
    # raise error if number is less than 1
    raise ArgumentError.new if number <= 0
    index = 1
    primes = [2]

    while primes.length < number
      index += 1
      prime = true

      # a number is not prime if divisible by any of the already 
      # established prime numbers
      primes.each do | n |
        if index % n == 0
          prime = false
          break
        end
      end

      # push new prime to list
      primes.push(index) if prime
    end

    return primes.last
  end
end

p Prime.nth(6) # => 13
#  p Prime.nth(10_001) # => 104_743