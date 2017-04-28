class Robot

  @taken_names = []

  def initialize
    reset
  end

  def name
    new_name = "AA#{@random_suffix}"
    if self.class.taken_names.include?(new_name)
      taken_names.push(new_name)
      name
    else
      new_name
    end
  end

  def reset
    @random_suffix = generate_random_suffix
  end

  private

  def generate_random_suffix
    Kernel.srand.to_s.split('').shuffle.join[0,3]
  end

  def self.taken_names
    @taken_names
  end
end

module BookKeeping
  VERSION = 2
end
