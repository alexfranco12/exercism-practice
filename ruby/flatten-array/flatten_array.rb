=begin
Write your code for the 'Flatten Array' exercise in this file. Make the tests in
`flatten_array_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/flatten-array` directory.
=end

# Take a nested list and return a single flattened 
# list with all values except nil/null.

class FlattenArray
  def self.flatten(arr)
    arr.flatten.select {|n| n != nil}
  end
end

p FlattenArray.flatten([0, 2, [[2, 3], 8, 100, 4, [[[50]]]], -2])
p FlattenArray.flatten([0, 2, [[2, 3], 8, [[100]], nil, [[nil]]], -2])