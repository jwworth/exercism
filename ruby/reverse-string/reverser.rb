class Reverser
  def self.reverse(input)
    reversed = ''

    input.length.times do |index|
      reversed += input[input.length - (1 + index)]
    end

    reversed
  end
end
