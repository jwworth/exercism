require 'date'
class Meetup
  WEEKDAYS = %i[sunday monday tuesday wednesday thursday friday saturday]

  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(weekday, schedule)
    result = nil
    candidates = { teenth: 13..19, first: 1..7, second: 8..14, third: 15..21, fourth: 22..28,
                   last: 31.downto(22) }.fetch(schedule)

    valid_days = candidates.filter_map do |day|
      valid_day(day)
    end

    valid_days.find do |candidate|
      candidate.wday == WEEKDAYS.index(weekday)
    end
  end

  private

  def valid_day(day)
    Date.new(@year, @month, day)
  rescue Date::Error
    nil
  end
end
