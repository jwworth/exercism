class Complement

  COMPLEMENTS = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }

  def self.of_dna(string)
    translated = string.split('').map { |l| COMPLEMENTS[l] }.join

    return '' if string.length != translated.length
    translated
  end
end

class BookKeeping; VERSION = 4; end
