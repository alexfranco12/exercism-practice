# Convert a phrase to its acronym.
class Acronym

  def self.abbreviate(phrase)
    acronym = ""
    phrase.split(/\W/).each do |word|
      next if word.length == 0
      acronym += word.chr.upcase
    end

    acronym
  end
end


p Acronym.abbreviate('Portable Network Graphics') # => PNG
p Acronym.abbreviate('First In, First Out') # => FIFO
p Acronym.abbreviate('Complementary metal-oxide semiconductor') # => CMOS
p Acronym.abbreviate('Something - I made up from thin air') # => SIMUFTA