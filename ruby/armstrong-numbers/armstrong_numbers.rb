=begin
Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
`armstrong_numbers_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/armstrong-numbers` directory.
=end

# TODO: Write some code to determine whether a number is 
# an Armstrong number.
module ArmstrongNumbers
  
  def is_armstrong_number?
    sum = 0
    arr = number.to_s.split("")
    arr.each do |n|
      sum += n.to_i**(arr.length)
    end

    sum
  end
end

p ArmstrongNumbers.new(5).is_armstrong_number? # => true
p ArmstrongNumbers.new(9_474).is_armstrong_number? # => true
p ArmstrongNumbers.new(9_475).is_armstrong_number? # => false