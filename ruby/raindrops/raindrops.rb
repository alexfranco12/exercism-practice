=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(raindrops)
    result = ""
    result += "Pling" if raindrops % 3 == 0
    result += "Plang" if raindrops % 5 == 0    
    result += "Plong" if raindrops % 7 == 0
    
    result.length > 0 ? result : raindrops.to_s
  end
end

p Raindrops.convert(1)