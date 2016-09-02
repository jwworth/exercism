module BookKeeping
 VERSION = 3
end

class Gigasecond
  def self.from(time)
    Time.at(time.to_i + (10 ** 9))
  end
end
