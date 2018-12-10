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
    "Your latest score was #{latest}. #{praise}"
  end

  def just_achieved_best?
    personal_best == latest
  end

  def praise
    return "That's your personal best!" if just_achieved_best?

    "That's #{personal_best - latest} short of your personal best!"
  end
end
