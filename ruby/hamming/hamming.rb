class Hamming
  def self.compute(first_strand, second_strand)
    raise ArgumentError if first_strand.length != second_strand.length

    first_strand.split('').each_with_index.count do |strand, i|
      second_strand[i] != strand
    end
  end
end
