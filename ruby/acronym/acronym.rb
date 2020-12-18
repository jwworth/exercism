class Acronym
  def self.abbreviate(term)
    words = term.tr(',-', ' ')

    words.split(/\s+/).map do |word|
      word[0]
    end.join.upcase
  end
end
