CATEGORY_MAP = { ones: 1, twos: 2, threes: 3, fours: 4, fives: 5, sixes: 6 }.freeze

class Yacht
  def initialize(rolls, category)
    @rolls = rolls
    @category = category
  end

  def score
    counts = @rolls.tally

    case @category
    when 'yacht'
      @rolls.uniq.one? ? 50 : 0
    when 'full house'
      counts.values.sort == [2, 3] ? @rolls.sum : 0
    when 'four of a kind'
      value, count = counts.max_by { |_, count| count }
      count >= 4 ? value * 4 : 0
    when 'little straight'
      @rolls.sort == [1, 2, 3, 4, 5] ? 30 : 0
    when 'big straight'
      @rolls.sort == [2, 3, 4, 5, 6] ? 30 : 0
    when 'choice'
      @rolls.sum
    else
      value = CATEGORY_MAP.fetch(@category.to_sym)
      @rolls.count(value) * value
    end
  end
end
