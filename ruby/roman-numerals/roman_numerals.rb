class Integer
  NUMERALS = [
    [nil, 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX'],
    [nil, 'X', 'XX', 'XXX', 'XL', 'L', 'LX', 'LXX', 'LXXX', 'XC'],
    [nil, 'C', 'CC', 'CCC', 'CD', 'D', 'DC', 'DCC', 'DCCC', 'CM'],
    [nil, 'M', 'MM', 'MMM'],
  ]

  def to_roman
    reversed_numbers = self.to_s.chars.map(&:to_i).reverse

    reversed_numbers.map.with_index do |num, i|
      NUMERALS[i][num]
    end.reverse.join
  end
end

class BookKeeping
  VERSION = 2
end
