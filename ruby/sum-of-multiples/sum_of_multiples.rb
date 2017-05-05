class SumOfMultiples

  attr_accessor :divisors

  def initialize(*numbers)
    @divisors = numbers
  end

  def to(limit)
    (1...limit).select do |number|
      divisors.any? do |divisor|
        (number % divisor).zero?
      end
    end.sum
  end
end
