class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    prepared_words = phrase.split(/[^a-z0-9']/).map do |word|
      word.gsub(/^'([a-z]*)'$/, '\1')
    end.reject(&:empty?)

    prepared_words.each_with_object(Hash.new(0)) do |word, hash|
      hash[word] += 1
    end
  end
end

class BookKeeping
  VERSION = 1
end
