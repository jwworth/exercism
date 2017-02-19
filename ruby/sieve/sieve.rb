class Sieve

  attr_reader :limit

  def initialize(limit)
    @limit = limit
  end

  def primes
    (2..limit).select { |number| prime?(number) }
  end

  private

  def prime?(number)
    (2...number).none? { |divisor| number % divisor == 0 }
  end
end
