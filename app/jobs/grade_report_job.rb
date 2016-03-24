require 'csv'

class GradeReportJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    parent = Parent.find(args[0])
    grades = parent.student.assignment_grades.where("created_at > ?", 1.week.ago) if parent.student
    file_path = Rails.root.join("tmp", "grades_report_#{Date.today}.csv")
    CSV.open(file_path, "w") do |csv|
      if grades
        csv << ["Grade", "Assignment Name", "Assignment Date"]
        grades.each do |g|
          csv << [g.grade, g.assignment_name, g.assignment_date]
        end
      else
        csv << ["No Grades"]
      end
    end
    WeeklyUpdate.grade_report("#{parent.users.first.email}", file_path, parent.id).deliver_now if parent.student
  end
end
