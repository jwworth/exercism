class Acronym
  def self.abbreviate(long)
    words = long.gsub(/[,-]/, ' ')

    words.split(/\s+/).map do |word|
      word[0].upcase
    end.join
  end
end
