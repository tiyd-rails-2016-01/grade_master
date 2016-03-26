require 'constants.rb'

class Student < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :principal
  has_many :parents
  has_many :assignment_grades
  has_many :users, as: :person
  has_many :student_achievements
  has_many :achievements, through: :student_achievements
  accepts_nested_attributes_for :achievements, allow_destroy: true
  accepts_nested_attributes_for :assignment_grades,
      reject_if: :all_blank,
      allow_destroy: true
  validates :first_name, presence: true

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

end
