module Luhn
  extend self

  def valid?(input)
    sanitized = input.tr(' ', '')
    return false unless sanitized =~ /^[0-9]{2,}$/

    result = sanitized.chars.reverse.each_with_index.reduce(0) do |acc, (char, index)|
      single = char.to_i

      if index.odd?
        double = single * 2
        single = (double > 9 ? double - 9 : double)
      end

      acc + single
    end

    (result % 10).zero?
  end
end
