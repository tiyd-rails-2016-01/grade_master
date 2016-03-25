class Principal < ActiveRecord::Base
  has_many :parents, through: :students
  has_many :users, as: :person
  has_many :students

  def self.number_of_teachers
    @teachers = Teacher.all
    @teachers.count
  end

  def self.number_of_students
    @students = Student.all
    @students.count
  end

  def self.completed_assignments
   @assignment_grade = AssignmentGrade.all
   @assignment_grade.count
  end

  def self.display_assignment_name(student)
    @assignment_grade = AssignmentGrade.all
    @assignment_grade.each do |g|
      AssignmentGrade.find_by(student_id: student.id).assignment_name
    end
  end

  def self.display_student_grades(student)
    AssignmentGrade.find_by(student_id: student.id).grade
  end

  def self.display_parent_first(student)
    Parent.find_by(student_id: student.id).first_name
  end

  def self.display_parent_last(student)
    Parent.find_by(student_id: student.id).last_name
  end

end
