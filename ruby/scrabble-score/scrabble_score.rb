=begin
Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
`scrabble_score_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/scrabble-score` directory.
=end

class Scrabble

  def initialize(word)
    @word = word ? word : ""
  end

  # loop through the word and sum up the score
  def score
    return 0 if @word.empty?
    result = 0
    @word.split("").each do |char|
      char.upcase!
      if "AEIOULNRST".include?(char)
        result += 1
      elsif "DG".include?(char)
        result += 2
      elsif "BCMP".include?(char)
        result += 3
      elsif "FHVWY".include?(char)
        result += 4
      elsif "K".include?(char)
        result += 5
      elsif "JX".include?(char)
        result += 8
      elsif "QZ".include?(char)
        result += 10
      end
    end

    result
  end
  
end


p Scrabble.new("cabbage").score # => 14
p Scrabble.new(nil).score # => 0

# TODO: refactor the code above to pass this test.
p Scrabble.score('alacrity') # => 13