class EliudsEggs
  def self.egg_count(count)
    binary = count.to_s(2)
    binary.chars.sum(&:to_i)
  end
end
