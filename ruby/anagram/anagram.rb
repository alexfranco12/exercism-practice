# Given a word and a list of candidates, select the sublist of anagrams of the given word.
class Anagram
  attr_accessor :word

  def initialize(word)
    @word = word.downcase
  end

  def match(candidates)
    result = []
    candidates.each do |candidate|
      # if candidate and word are same or not equal in length, move on to next word
      next if candidate.downcase == @word || candidate.length != @word.length

      # break each word into sorted arrays of their characters and test letter by letter
      # if we reach the end of the word, push candidate to rusult array
      word = @word.split("").sort
      candidate.downcase.split("").sort.each_with_index do |char, i|
        break if char != word[i]
        result.push(candidate) if i == candidate.length - 1
      end
    end

    # return filtered array
    result
  end
end

detector = Anagram.new('master')
anagrams = detector.match(%w[stream pigeon maters])
p anagrams # => %w[maters stream]

detector = Anagram.new('good')
anagrams = detector.match(%w[dog goody])
p anagrams # => []

detector = Anagram.new('LISTEN')
anagrams = detector.match(%w[Listen Silent LISTEN])
p anagrams # => ["Silent"]