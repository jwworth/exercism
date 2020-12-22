module ArmstrongNumbers
  extend self

  def include?(candidate)
    digits = candidate.to_s.chars
    raised_sum = digits.reduce(0) do |acc, digit|
      acc + digit.to_i**digits.length
    end

    raised_sum == candidate
  end
end
