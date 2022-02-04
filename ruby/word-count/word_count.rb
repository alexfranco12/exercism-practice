=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def phrase
    @phrase
  end

  def word_count
    count = {}
    arr = @phrase.downcase.gsub(/[!:&@$%^&.,]/, " ").split(" ")
    arr.each do |word|
      word = word[1...-1] if word[0] == "'"
      word = word[0...-2] if word[-1] == "'"

      if count[word]
        count[word] += 1
      else
        count[word] = 1
      end
    end

    count
  end
end

phrase = Phrase.new("Joe can't tell between 'large' and large.")
p phrase.phrase
p phrase.word_count