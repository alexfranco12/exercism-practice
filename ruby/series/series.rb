=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(string)
    @string = string.split("")
  end

  def slices(n)
    raise ArgumentError.new if n > @string.length
    
    result = []
    @string.each_with_index do |num, i|
      index = i + 1
      slice = [num]
      (n-1).times do
        slice.push(@string[index]) if @string[index]
        index += 1
      end
      result.push(slice.join("")) if slice.length == n
    end

    p result
  end

end

series = Series.new('81228')
series.slices(5)