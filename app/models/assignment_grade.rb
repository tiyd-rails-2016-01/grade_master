class AssignmentGrade < ActiveRecord::Base
  belongs_to :student

  validates :assignment_name, presence: true
  validates :grade, presence: true
end
