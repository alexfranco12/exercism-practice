=begin
Write your code for the 'Pangram' exercise in this file. Make the tests in
`pangram_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/pangram` directory.
=end

class Pangram

  # Determine if a sentence is a pangram
  def self.pangram?(sentence)
    sentence.downcase!
    ("a"..."z").each do |char|
      if !sentence.include?(char)
        return false
      end
    end

    true
  end

end

sentence = 'abcdefghijklmnopqrstuvwxyz' 
p Pangram.pangram?(sentence)
# => true

sentence = 'the quick brown fox jumps over with lazy FX'
p Pangram.pangram?(sentence)
# => false