=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end

class Complement

  def self.of_dna(str = "")
    result = ""
    str.length.times do |nu|
    if nu == "G"
      result += "C"
    elsif nu == "C"
      result += "G"
    elsif nu == "T"
      result += "A"
    elsif nu == "A"
      result += "U"
    end

    result
  end
  
end