require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "can associate student with assignment grade" do
    student = Student.create!(first_name: "Sarah", last_name: "Smith")
    grade = AssignmentGrade.create!(assignment_name: "Homework", assignment_date: Time.now.to_date, grade: "B", student_id: student.id)
    assert student.assignment_grades.include?(grade)
  end

  test "teacher student index page displays their students average grades" do
    
  end


end
