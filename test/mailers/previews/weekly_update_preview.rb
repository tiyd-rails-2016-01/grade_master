# Preview all emails at http://localhost:3000/rails/mailers/weekly_update
class WeeklyUpdatePreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/weekly_update/grade_report
  def grade_report
    WeeklyUpdate.grade_report
  end

end
