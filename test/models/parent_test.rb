require 'test_helper'


class ParentTest < ActiveSupport::TestCase

  test "can associate parent with student" do
    student = Student.create!(first_name: "Sarah", last_name: "Smith")
    parent = Parent.create!(first_name: "Sarah", last_name: "Smith", student_id: student.id)
    assert student.parents.include?(parent)
  end

  test "parent sees average grade after logging in" do
    assert_equal 89, parents(:one).average_grade
  end

  test "Parent sees class rank after logging in" do
    assert_equal 1, parents(:one).class_rank
  end


end
