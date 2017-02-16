class Pangram

  def self.pangram?(string)
    26 == string
      .downcase
      .gsub(/[^a-z]/, '')
      .chars
      .uniq
      .length
  end
end
