class WordProblem
  SYMBOL_MAP = {
    plus: '+',
    minus: '-',
    multiplied: '*',
    divided: '/'
  }

  attr_reader :input

  def initialize(sentence)
    SYMBOL_MAP.map { |k, v| sentence.gsub!(k.to_s, v) }
    @input = sentence
  end

  def answer
    raise ArgumentError unless input.match(Regexp.union(SYMBOL_MAP.values))

    tokens = tokenize(input)
    tokens.unshift(eval(tokens.shift(3).join)) until tokens.one?

    tokens.first
  end

  private

  def tokenize(input)
    input.split(/\s|\?/).select do |char|
      char.match?(/[-0-9+]/) || SYMBOL_MAP.values.include?(char)
    end
  end
end
