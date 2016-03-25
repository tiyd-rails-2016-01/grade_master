class Student < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :principal
  has_many :parents
  has_many :assignment_grades
  has_many :users, as: :person

  validates :first_name, presence: true

end
