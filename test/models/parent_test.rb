require 'test_helper'

class ParentTest < ActiveSupport::TestCase

  test "can associate parent with student" do
    student = Student.create!(first_name: "Sarah", last_name: "Smith")
    parent = Parent.create!(first_name: "Sarah", last_name: "Smith", student_id: student.id)
    assert student.parents.include?(parent)
  end


end
