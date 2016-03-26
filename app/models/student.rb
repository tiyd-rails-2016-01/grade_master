class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :assignment_grades
  has_many :users, as: :person

  validates :first_name, presence: true
    #
  def average_grade
    assignment_grades.average(:grade)
  end

  def class_rank(tid)
    t = Teacher.find(tid)
    s = Student.where(teacher_id: t.id)


  end

end
