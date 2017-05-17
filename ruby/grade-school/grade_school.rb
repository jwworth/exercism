class School
  attr_accessor :student_body

  def initialize
    @student_body = Hash.new { |hash, key| hash[key] = [] }
  end

  def students(grade)
    student_body[grade]
  end

  def add(name, grade)
    student_body[grade] << name
    student_body[grade].sort!
  end

  def students_by_grade
    student_body.sort.map do |grade, students|
      { grade: grade, students: students }
    end
  end
end

class BookKeeping
  VERSION = 3
end
