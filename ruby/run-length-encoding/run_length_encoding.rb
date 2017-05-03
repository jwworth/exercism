class RunLengthEncoding
  def self.encode(input)
    return '' if input.empty?

    input.chars.chunk { |letter| letter }.map do |k, v|
      "#{v.length if v.length > 1}#{k}"
    end.join
  end

  def self.decode(input)
    input.split(/(?<=[A-Za-z\s])/).map do |chunk|
      chunk = "1" + chunk if chunk.length == 1

      chars = chunk.chars
      chars.pop * chars.join.to_i
    end.join
  end
end

class BookKeeping
  VERSION = 3
end
