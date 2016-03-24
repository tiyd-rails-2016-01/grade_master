class AssignmentGrade < ActiveRecord::Base
  belongs_to :student

  validates :assignment_name, presence: true
  validates :grade, presence: true


  def self.send_reports
    parents = Parent.joins(:users).where("email_preferences = ?", true)
    parents.each do |p|
      GradeReportJob.perform_now(p.id)
    end
  end
end
