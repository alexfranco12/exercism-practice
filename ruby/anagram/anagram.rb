=begin
Write your code for the 'Anagram' exercise in this file. Make the tests in
`anagram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/anagram` directory.
=end

# Given a word and a list of candidates, select the sublist of anagrams of the given word.
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    result = []
    candidates.each do |candidate|
      # if candidate and word are same or not same in length, move on to next word
      next if candidate.downcase == @word || candidate.length != @word.length

      # break each word into sorted arrays of their characters and test letter by letter
      # if we reach the end of the word, push candidate to rusult array
      word = @word.split("").sort
      arr = candidate.downcase.split("").sort
      arr.each_with_index do |char, i|
        break if char != word[i]
        if i == candidate.length - 1
          result.push(candidate)
        end
      end
      
    end

    # return filtered array
    result
  end
end

detector = Anagram.new('master')
anagrams = detector.match(%w[stream pigeon maters])
p detector.word
p anagrams # => %w[maters stream]

detector = Anagram.new('good')
anagrams = detector.match(%w[dog goody])
p anagrams # => []

detector = Anagram.new('LISTEN')
anagrams = detector.match(%w[Listen Silent LISTEN])
p anagrams # => ["Silent"]