class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError if first_strand.length != second_strand.length

    first_strand.each_char.with_index.count do |nucleotide, i|
      second_strand[i] != nucleotide
    end
  end
end
