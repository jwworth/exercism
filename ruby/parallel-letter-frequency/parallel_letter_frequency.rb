class ParallelLetterFrequency
  def self.count(texts)
    texts.join.gsub(/[^[:alpha:]]/, '').downcase.chars.tally
  end
end
