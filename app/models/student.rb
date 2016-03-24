class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :assignment_grades
  has_many :users, as: :person

  has_many :student_achievements
  has_many :achievements, through: :student_achievements

  accepts_nested_attributes_for :achievements, allow_destroy: true

  validates :first_name, presence: true

end
