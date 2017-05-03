class Binary
  def self.to_decimal(string)
    raise ArgumentError if string.match?(/[^0-1]/)

    string.reverse.chars.map(&:to_i).map.with_index do |digit, index|
      digit * 2**index
    end.sum
  end
end

class BookKeeping
  VERSION = 3
end
