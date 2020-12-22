class Anagram
  attr_reader :word

  def initialize(word)
    @word = word
  end

  def match(possibles)
    possibles.filter do |possible|
      possible.downcase != word.downcase &&
        possible.downcase.chars.sort == word.downcase.chars.sort
    end
  end
end
