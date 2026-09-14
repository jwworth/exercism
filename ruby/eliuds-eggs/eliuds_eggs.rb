class EliudsEggs
  def self.egg_count(count)
    binary = count.to_s(2)

    binary.chars.count do |digit|
      digit == '1'
    end
  end
end
