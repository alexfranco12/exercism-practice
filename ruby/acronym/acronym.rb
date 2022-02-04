=begin
Write your code for the 'Acronym' exercise in this file. Make the tests in
`acronym_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/acronym` directory.
=end

class Acronym

  def self.abbreviate(sentence)
    acronym = ""
    sentence.gsub!('-', ' ')
    arr = sentence.split(" ")
    arr.each do |word|
      acronym += word[0].upcase
    end

    acronym
  end
end


p Acronym.abbreviate('Portable Network Graphics')
p Acronym.abbreviate('First In, First Out')
p Acronym.abbreviate('Complementary metal-oxide semiconductor')
p Acronym.abbreviate('Something - I made up from thin air')