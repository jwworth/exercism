class Scale
  attr_reader :root, :type, :intervals

  DISTANCES = { M: 1, A: 2, m: 0 }

  def initialize(root, type, intervals = '')
    @root = root
    @type = type
    @intervals = intervals.chars
  end

  def name
    "#{root.capitalize} #{type}"
  end

  def pitches
    scale = select_scale
    start = scale.index(root.capitalize)
    rotated = scale[start..-1] + scale[0...start]

    intervalize(rotated)
  end

  private

  def intervalize(scale)
    intervals.each_with_index do |interval, index|
      scale.slice!(index + 1, DISTANCES[interval.to_sym])
    end

    scale
  end

  def select_scale
    if sharps?
      %w[A A# B C C# D D# E F F# G G#]
    else
      %w[A Bb B C Db D Eb E F Gb G Ab]
    end
  end

  def sharps?
    %w[a C G D A E B F# e b f# c# g# d#].include?(root)
  end
end
