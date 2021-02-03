class Darts
  attr_reader :radius

  def initialize(x, y)
    @radius = Math.sqrt(x**2 + y**2)
  end

  def score
    if radius <= 1
      10
    elsif radius <= 5
      5
    elsif radius <= 10
      1
    else
      0
    end
  end
end
