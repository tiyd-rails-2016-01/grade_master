require 'test_helper'

class WeeklyUpdateTest < ActionMailer::TestCase
  test "grade_report" do
    test_path = Rails.root.join("test", "mailers", "test.csv")
    mail = WeeklyUpdate.grade_report("to@example.org", test_path, parents(:one).id)
    assert_equal "Weekly Grades", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["GradeMaster@school.edu"], mail.from
    assert_match "Hay", mail.body.encoded
  end

end
