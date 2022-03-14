=begin
Write your code for the 'Palindrome Products' exercise in this file. Make the tests in
`palindrome_products_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/palindrome-products` directory.
=end

class Palindromes
  attr_accessor :range

  def initialize(**args)
    @range = args
  end

  def generate
    min_factor = @range[:min_factor] || 0
    max_factor = @range[:max_factor]
    factors = []

    (min_factor..max_factor).each do |number|
      i = number
      while i <= max_factor
        product = number * i
        if product.to_s == product.to_s.reverse
          factors.push([number, i])
        end
        i += 1
      end
    end

    @factors = factors
  end

  def largest

  end

  def smallest

  end

end

palindromes = Palindromes.new(max_factor: 9)
palindromes.generate
largest = palindromes.largest
p largest
# largest.value