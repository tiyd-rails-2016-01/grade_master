require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "can associate student with assignment grade" do
    student = Student.create!(first_name: "Sarah", last_name: "Smith")
    grade = AssignmentGrade.create!(assignment_name: "Homework", assignment_date: Time.now.to_date, grade: "B", student_id: student.id)
    assert student.assignment_grades.include?(grade)
  end

  test "can retrieve total points based on achievements for a student" do
    students(:marcia).achievements << achievements(:one)
    students(:marcia).achievements << achievements(:two)

    assert_equal 600, students(:marcia).total_achievements
  end

  test "can retrieve correct grade based on achievements earned" do
    students(:anjana).achievements << achievements(:one)
    students(:anjana).achievements << achievements(:two)

    assert_equal :F, students(:anjana).achievement_grade

    a = Achievement.create!(name: "Three", description: "The third!", points: 2500)
    students(:anjana).achievements << a

    assert_equal :A, students(:anjana).achievement_grade
  end

end
