class Student < ActiveRecord::Base
  belongs_to :teacher
  has_many :parents
  has_many :assignment_grades
  has_many :users, as: :person

  accepts_nested_attributes_for :assignment_grades,
      reject_if: :all_blank,
      allow_destroy: true

  validates :first_name, presence: true

end
