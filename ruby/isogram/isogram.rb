=begin
Write your code for the 'Isogram' exercise in this file. Make the tests in
`isogram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/isogram` directory.
=end

class Isogram

  def self.isogram?(input)
    input.downcase.gsub(/[\W]/, "").split("").each do |char|
      if input.downcase.count(char) > 1
        return false 
      end
    end
    
    true
  end
end

input = "isogram"
p Isogram.isogram?(input)