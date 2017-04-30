class Grains
  def self.square(number)
    raise ArgumentError if number < 1 || number > 64

    count = 1
    (number - 1).times { count *= 2 }
    count
  end

  def self.total
    (1..64).sum { |number| square(number) }
  end
end

module BookKeeping
  VERSION = 1
end
