require 'test_helper'

class TeacherTest < ActiveSupport::TestCase

  test "can associate teacher with student" do
    teacher = Teacher.create!(first_name: "Bob", last_name: "Smith")
    student = Student.create!(first_name: "Sally", last_name: "Scott")
    teacher.students << student
    assert_equal "Bob", student.teacher.first_name
  end





end
