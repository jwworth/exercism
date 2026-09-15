class Microwave
  def initialize(input)
    @input = input
  end

  def timer
    minutes = @input / 100
    seconds = @input % 100

    minutes += seconds / 60
    seconds %= 60

    [pad(minutes), pad(seconds)].join(':')
  end

  private

  def pad(time)
    time.to_s.rjust(2, '0')
  end
end
