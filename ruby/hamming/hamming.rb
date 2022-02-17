=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end

# Calculate the Hamming Distance between two DNA strands.
class Hamming
  attr_accessor :strands

  def self.compute(*strands)
    @strands = strands
    count = 0
    
    strand1 = strands[0]
    strand2 = strands[1]

    # both strands should be equal in length
    raise ArgumentError.new if strand1.length != strand2.length

    # count how many mismatches exist
    strand1.split("").each_with_index do | dna, i |
      count += 1 if dna != strand2[i]
    end

    count
  end
end

p Hamming.compute('A', 'A') # => 0
p Hamming.compute('GGACGGATTCTG', 'AGGACGGATTCT') # => 9