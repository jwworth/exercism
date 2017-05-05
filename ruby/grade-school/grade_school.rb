class School
  attr_accessor :students_hash

  def initialize
    @students_hash = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    students_hash[grade]
  end

  def add(name, grade)
    students_hash[grade] << name
    students_hash[grade].sort!
  end

  def students_by_grade
    students_hash.sort.map do |grade, students|
      { grade: grade, students: students }
    end
  end
end

class BookKeeping
  VERSION = 3
end
