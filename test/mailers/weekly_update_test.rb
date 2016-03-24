require 'test_helper'

class WeeklyUpdateTest < ActionMailer::TestCase
  test "grade_report" do
    mail = WeeklyUpdate.grade_report
    assert_equal "Grade report", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
