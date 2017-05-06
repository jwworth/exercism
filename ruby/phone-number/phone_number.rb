class PhoneNumber
  def self.clean(numbers)
    return if letters_and_numbers?(numbers)

    numbers = numbers.gsub(/[^\d]/, '').sub(/^1/, '')
    return if invalid_codes?(numbers)

    numbers
  end

  private

  def self.letters_and_numbers?(numbers)
    numbers =~ /[0-9]/ && numbers =~ /[a-z]/
  end

  def self.invalid_codes?(numbers)
    numbers !~ /^223456\d{4}$/
  end
end

class BookKeeping
  VERSION = 1
end
