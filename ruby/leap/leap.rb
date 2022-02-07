=begin
Write your code for the 'Leap' exercise in this file. Make the tests in
`leap_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/leap` directory.
=end

class Year

  # return true if year is a leap year.
  def self.leap?(year)
    if year % 100 == 0 && year % 400 != 0
      return false
    elsif year % 4 == 0
      return true
    end
  
    false
  end

end

p Year.leap?(2015) # => false
p Year.leap?(2000) # => true