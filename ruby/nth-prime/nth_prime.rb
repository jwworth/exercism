module Prime
  def self.nth(number)
    raise ArgumentError if number.zero?

    counter = 3
    primes = [2, 3]

    until result = primes[number - 1]
      counter += 2
      primes.push(counter) if prime?(counter)
    end
    result
  end

  def self.prime?(number)
    (2..Math.sqrt(number)).none? { |i| (number % i).zero? }
  end
end

class BookKeeping
  VERSION = 1
end
