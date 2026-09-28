class Reverser
  def self.reverse(input)
    result = ''
    counter = input.length

    counter.times do
      result += input[counter - 1]
      counter -= 1
    end

    result
  end
end
