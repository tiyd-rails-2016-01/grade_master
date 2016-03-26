require 'byebug'

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

  def class_rank
    students = Student.all
    better_students = students.select {|s| s.average_grade > self.average_grade}
    rank = better_students.count + 1
  end
end
