class Parent < ActiveRecord::Base
  belongs_to :student
  has_many :users, as: :person

  validates :first_name, presence: true

  def assignment_grades
    student && student.assignment_grades
  end

  def average_grade
    student && student.average_grade
  end

  def class_rank
    student && student.class_rank
  end

end
