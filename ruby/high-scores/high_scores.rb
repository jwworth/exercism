# frozen_string_literal: true

class HighScores
  attr_reader :scores, :latest, :personal_best

  def initialize(scores)
    @scores = scores
    @latest = scores.last
    @personal_best = scores.max
  end

  def personal_top_three
    scores.sort { |first, second| second <=> first }.take(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
