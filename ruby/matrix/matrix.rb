=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

# Given a string representing a matrix of numbers, 
# return the rows and columns of that matrix.
class Matrix
  attr :matrix, :rows, :columns

  def initialize(matrix)
    @matrix = matrix.split("\n")
    define_rows
    define_columns
  end

  def define_rows
    rows = []
    @matrix.each_with_index do |row, i|
      rows.push(row.split(" ").map { |x| x.to_i })
    end

    @rows = rows
  end

  def define_columns
    cols = []
    j = 0

    # TODO: refactor this code to minimize loops
    while j < @rows[0].length
      arr = []
      i = 0
      while i < @matrix.length
        arr.push(@rows[i][j])
        i += 1
      end
      cols.push(arr)
      j += 1
    end

    @columns = cols
  end
end

matrix = Matrix.new("1 4 9\n16 25 36")
p matrix.matrix
p matrix.rows[1] # => [16, 25, 36]
p matrix.columns[1] # => [4, 25]
p matrix.columns.last # => [9, 36]