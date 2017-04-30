class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    prepared_words = phrase.split(/[^a-z0-9']/).map do |word|
      word.gsub(/^'([a-z]*)'$/, '\1')
    end.reject(&:empty?)

    prepared_words.each_with_object({}) do |word, h|
      if h[word]
        h[word] += 1
      else
        h[word] = 1
      end
    end
  end
end

class BookKeeping
  VERSION = 1
end
