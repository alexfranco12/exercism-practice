=begin
Write your code for the 'Proverb' exercise in this file. Make the tests in
`proverb_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/proverb` directory.
=end

class Proverb
  attr_accessor :proverb
  
  def initialize(*args)
    hash = args.last.is_a?(Hash) ? args.pop : nil
    @proverb = self.proverb(args, hash)
  end

  def proverb(strings, hash)
    result = []
    i = 1

    while i < strings.length do
      result.push("For want of a #{strings[i-1]} the #{strings[i]} was lost.")
      i += 1
    end

    result.push("And all for the want of a #{hash ? hash[:qualifier] + " " + strings.first : strings.first}.")
    result
  end

  def to_s
    @proverb.join("\n")
  end
end

chain = %w[nail shoe horse rider message battle kingdom]
proverb = Proverb.new(*chain, qualifier: 'horseshoe')
p proverb.to_s