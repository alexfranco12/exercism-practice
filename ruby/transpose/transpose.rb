=begin
Write your code for the 'Transpose' exercise in this file. Make the tests in
`transpose_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/transpose` directory.
=end

# Given an input text output it transposed.
class Transpose
  attr_accessor :input

  def self.transpose(input)
    @input = input
    
    # return empty string if input is empty
    return "" if input.empty?

    result = []
    input = input.split("\n")
    max = input.max_by(&:length).length

    i = 0
    while i < max
      string = ""
      input.each do |section|
        next if i > section.length
        string += (section[i].nil? ? " " : section[i])
      end
      result.push(string)
      i += 1
    end

    result.join("\n").chomp(" ")
  end
end

# input = "ABC\n123"
# p Transpose.transpose(input) # => "A1\nB2\nC3"

# input = "The first line.\nThe second line."
# p Transpose.transpose(input) # => "TT\nhh\nee\n  \nfs\nie\nrc\nso\ntn\n d\nl \nil\nni\nen\n.e\n ."

# input = "The fourth line.\nThe fifth line."
# p Transpose.transpose(input) # => "TT\nhh\nee\n  \nff\noi\nuf\nrt\nth\nh \n l\nli\nin\nne\ne.\n."

# FIXME: this case doesnt work as intended.
input = "The longest line.\nA long line.\nA longer line.\nA line."
p Transpose.transpose(input) # => "TAAA\nh   \nelll\n ooi\nlnnn\nogge\nn e.\nglr\nei \nsnl\ntei\n .n\nl e\ni .\nn\ne\n."