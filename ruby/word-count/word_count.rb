class Phrase
  attr_reader :phrase, :tokens

  def initialize(phrase)
    @phrase = phrase
    @tokens = tokenize
  end

  def word_count
    tokens.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end

  private

  def tokenize
    phrase.downcase
      .gsub(/['"](\w+)['"]/, '\1')
      .split(/[^a-z0-9']/)
      .reject(&:empty?)
  end
end

class BookKeeping
  VERSION = 1
end
