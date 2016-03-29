require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  test "can associate student with assignment grade" do
    student = Student.create!(first_name: "Sarah", last_name: "Smith")
    grade = AssignmentGrade.create!(assignment_name: "Homework", assignment_date: Time.now.to_date, grade: "B", student_id: student.id)
    assert student.assignment_grades.include?(grade)
  end

  test "teacher student index page displays their students average grades" do
    assert_equal 79, students(:one).average_grade
  end

  test "Student sees average grade after logging in" do
    assert_equal 79, students(:one).average_grade
  end

  test "Student sees class rank after logging in" do
    assert_equal 2, students(:one).class_rank
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

  test "can get list of students not assigned to users" do
    p Student.for_select
    assert_equal 3, Student.for_select.length
  end
end
