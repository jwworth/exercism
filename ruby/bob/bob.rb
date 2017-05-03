class Bob

  def self.hey(string)
    remark = string.delete("\n")

    case remark
    when remark.upcase == remark && /[A-Z]/
      'Whoa, chill out!'
    when /^.*\?$/
      'Sure.'
    when /^\s*$/
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
