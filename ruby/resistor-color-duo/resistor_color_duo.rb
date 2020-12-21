module ResistorColorDuo
  extend self

  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def value(colors)
    first, second = colors[0..1]
    [COLORS.index(first), COLORS.index(second)].join.to_i
  end
end
