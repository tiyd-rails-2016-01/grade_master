class AssignmentGrade < ActiveRecord::Base
  has_attached_file :uploaded_file
  belongs_to :student

  validates_attachment_content_type :uploaded_file, :content_type => "application/pdf"
  validates_attachment_size :uploaded_file, :less_than => 5.megabytes
  validates :assignment_name, presence: true
  validates :grade, presence: true


  def self.send_reports
    parents = Parent.joins(:users).where("email_preferences = ?", true)
    parents.each do |p|
      GradeReportJob.perform_now(p.id)
    end
  end
end
