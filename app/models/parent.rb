class Parent < ActiveRecord::Base
  belongs_to :student
  has_many :users, as: :person

  validates :first_name, presence: true

  def assignment_grades
    student && student.assignment_grades
  end
end
