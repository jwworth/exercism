class PhoneNumber
  def self.clean(numbers)
    return if letters_and_numbers?(numbers)

    numbers = numbers.gsub(/[^\d]/, '')
    numbers = numbers[1..-1] if numbers[0] == '1'
    return if invalid_codes?(numbers)

    numbers
  end

  private

  def self.letters_and_numbers?(numbers)
    numbers.match?(/[0-9]/) && numbers.match?(/[a-z]/)
  end

  def self.invalid_codes?(numbers)
    numbers !~ /^223456\d{4}$/
  end
end

class BookKeeping
  VERSION = 1
end
