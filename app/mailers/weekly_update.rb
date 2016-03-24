class WeeklyUpdate < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.weekly_update.grade_report.subject
  #
  def grade_report(email, path)
    @greeting = "Hay"

    attachments["weekly_grades_#{Date.today}.csv"] = File.read(path)
    mail to: email, subject: "Weekly Grades"
  end
end
