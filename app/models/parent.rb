class Parent < ActiveRecord::Base
  belongs_to :student
  has_many :users, as: :person

  validates :first_name, presence: true

  def assignment_grades
    student && student.assignment_grades
  end

  def average_grade
    assignment_grades.average(:grade)
  end

  def class_rank
    students = Student.all
    better_students = students.select {|s| s.average_grade > self.average_grade}
    rank = better_students.count + 1
  end

end
