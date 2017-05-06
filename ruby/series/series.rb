class Series
  attr_reader :chars

  def initialize(string)
    @chars = string.chars
  end

  def slices(length)
    raise ArgumentError if length > chars.length

    zero_index = length - 1
    chars.map.with_index do |num, index|
      if chars[index + zero_index]
        (1..zero_index).each do |ahead_position|
          num += chars[index + ahead_position]
        end
      end
      num
    end.reject { |string| string.length < length }
  end
end
