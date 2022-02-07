=begin
Write your code for the 'Gigasecond' exercise in this file. Make the tests in
`gigasecond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/gigasecond` directory.
=end

class Gigasecond

  def self.from(moment)
    moment += 10**9
  end

end

p Gigasecond.from(Time.utc(1959, 7, 19, 0, 0, 0))