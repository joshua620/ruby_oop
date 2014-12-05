class Student

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 97)
bob = Student.new("Bob", 87)
puts "Joe scored better than Bob." if joe.better_grade_than?(bob)