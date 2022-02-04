=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
  def initialize(scores)
    @scores = scores
  end

  def scores
    @scores
  end

  def latest
    @scores[@scores.length - 1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.reverse[0..2]
  end

  def latest_is_personal_best?
    self.latest === self.personal_best
  end
end

scores = [30, 50, 50, 20, 70]
p HighScores.new(scores).scores
p HighScores.new(scores).latest
p HighScores.new(scores).personal_best
p HighScores.new(scores).personal_top_three
p HighScores.new(scores).latest_is_personal_best?