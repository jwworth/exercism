class DndCharacter
  attr_reader(*%i[strength dexterity constitution intelligence wisdom charisma])

  def initialize
    @charisma = rolls
    @constitution = rolls
    @dexterity = rolls
    @intelligence = rolls
    @strength = rolls
    @wisdom = rolls
  end

  def hitpoints
    10 + self.class.modifier(@constitution)
  end

  def self.modifier(score)
    (score - 10) / 2
  end

  private

  def roll
    rand(1..6)
  end

  def rolls
    4.times.map { roll }.max(3).sum
  end
end
