module Luhn
  extend self

  def valid?(input)
    sanitized = input.tr(' ', '')
    return false unless sanitized =~ /^[0-9]{2,}$/

    result = sanitized.chars.reverse.each_with_index.reduce(0) do |acc, (char, index)|
      integer = char.to_i

      if index.even?
        addition = integer
      else
        double = integer * 2
        addition = (double > 9 ? double - 9 : double)
      end

      acc += addition
    end

    (result % 10).zero?
  end
end
