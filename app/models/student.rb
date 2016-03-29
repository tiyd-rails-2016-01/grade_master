
require 'constants.rb'

class Student < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :principal
  has_many :parents
  has_many :assignment_grades, dependent: :destroy
  has_many :users, as: :person
  has_many :student_achievements, dependent: :destroy
  has_many :achievements, through: :student_achievements
  accepts_nested_attributes_for :achievements, allow_destroy: true
  accepts_nested_attributes_for :assignment_grades,
      reject_if: :all_blank,
      allow_destroy: true
  validates :first_name, presence: true
    #
  def average_grade
    assignment_grades.average(:grade)
  end

  def class_rank
    students = Student.all
    better_students = students.select {|s| (s.average_grade || 0) > (self.average_grade || 0)}
    rank = better_students.count + 1
  end

  include Constants

  def total_achievements
    achievements.sum(:points)
  end

  def achievement_grade
    Constants::THRESHOLDS.each do |k,v|
      if total_achievements >= v
        return k
      end
    end
    return :F
  end

  def self.for_select(person_id, person_type)
    if person_type == "Student"
      s = Student.joins("LEFT JOIN 'users' ON students.id = users.person_id and users.person_type = 'Student'").where("users.id IS NULL OR students.id = #{person_id}")
    else
      s = Student.joins("LEFT JOIN 'users' ON students.id = users.person_id and users.person_type = 'Student'").where("users.id IS NULL")
    end
    s.collect {|temp| [temp.first_name, temp.to_global_id]}
  end
end
