class RotationalCipher
  def self.rotate(input, rotation)
    lower = ('a'..'z').to_a
    upper = ('A'..'Z').to_a

    lower_rotated = array_rotate(lower, rotation)
    upper_rotated = array_rotate(upper, rotation)

    input.chars.map do |char|
      if lower.include?(char)
        lower_rotated[lower.index(char)]
      elsif upper.include?(char)
        upper_rotated[upper.index(char)]
      else
        char
      end
    end.join
  end

  def self.array_rotate(array, rotation)
    array[rotation..-1] + array[0...rotation]
  end
end
