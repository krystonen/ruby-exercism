# finding the right score in arrays
class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top
    @scores.sort.reverse.first(3)
  end

  def report
    sentence = "Your latest score was #{latest}. "
    if personal_best == latest
      sentence + "That's your personal best!"
    elsif personal_best > latest
      sentence + "That's #{personal_best - latest} short of your personal best!"
    end
  end
end
