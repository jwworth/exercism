class Anagram
  attr_reader :word

  def initialize(word)
    @word = word.downcase
  end

  def match(possibles)
    possibles.filter do |possible|
      possible.downcase != word &&
        possible.downcase.chars.sort == word.chars.sort
    end
  end
end
