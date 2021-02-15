class Clock
  attr_reader :minutes

  def initialize(hour: 0, minute: 0)
    @minutes = time_minutes(hour, minute)
  end

  def time_minutes(hour, minute)
    hour_in_minutes = hour * 60
    hour_in_minutes + minute
  end

  def to_s
    hour, minute = normalize(minutes)

    present(hour, minute)
  end

  def present(hour, minute)
    adjusted_hour = hour.to_s.rjust(2, '0')
    adjusted_minute = minute.to_s.rjust(2, '0')

    "#{adjusted_hour}:#{adjusted_minute}"
  end

  def normalize(time)
    hour = (time / 60) % 24
    minute = time % 60

    [hour, minute]
  end

  def to_i
    minutes
  end

  def +(other)
    sum = minutes + other.to_i
    present(*normalize(sum))
  end

  def -(other)
    sum = minutes - other.to_i
    present(*normalize(sum))
  end

  def ==(other)
    normalize(minutes) == normalize(other.to_i)
  end
end
