class PrimeFactors
  def self.of(number)
    result = []
    counter = 2

    while number > 1
      if (number % counter).zero?
        result.push(counter)
        number /= counter
      else
        counter += 1
      end
    end

    result
  end
end
