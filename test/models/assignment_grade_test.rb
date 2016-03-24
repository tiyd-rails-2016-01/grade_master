require 'test_helper'

class AssignmentGradeTest < ActiveSupport::TestCase

    test "grade is a float and not a string" do
      assert_equal 168, assignment_grades(:one).grade + assignment_grades(:two).grade
    end
# test "the truth" do
  #   assert true
  # end
end
