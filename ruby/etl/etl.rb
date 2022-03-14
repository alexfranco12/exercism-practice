=begin
Write your code for the 'ETL' exercise in this file. Make the tests in
`etl_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/etl` directory.
=end

class ETL

  def self.transform(old)
    result = {}

    #FIXME: Is there a way to complete this problem w/o nested loops?
    old.each do |score|
      score[1].each do |char|
        result.merge!({char.downcase => score[0]})
      end
    end

    # return result
    result
  end

end