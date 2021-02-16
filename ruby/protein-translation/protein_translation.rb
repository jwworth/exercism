class InvalidCodonError < StandardError; end

module Translation
  CODON_MAP = { 'AUG' => 'Methionine',
                'UAU' => 'Tyrosine',
                'UAC' => 'Tyrosine',
                'UCU' => 'Serine',
                'UCC' => 'Serine',
                'UCA' => 'Serine',
                'UCG' => 'Serine',
                'UUA' => 'Leucine',
                'UUG' => 'Leucine',
                'UUU' => 'Phenylalanine',
                'UUC' => 'Phenylalanine',
                'UAA' => 'STOP',
                'UAG' => 'STOP',
                'UGA' => 'STOP',
                'UGG' => 'Tryptophan',
                'UGU' => 'Cysteine',
                'UGC' => 'Cysteine' }

  def self.of_codon(codon)
    CODON_MAP[codon]
  end

  def self.of_rna(strand)
    raise InvalidCodonError unless of_codon(strand[0..2])

    strand.chars.each_slice(3).take(3).map do |substrand|
      result = of_codon(substrand.join)
      if result == 'STOP'
        nil
      else
        result
      end
    end.reject(&:nil?)
  end
end
