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

  def self.for_select(person_id, person_type)
    if person_type == "Parent"
      p = Parent.joins("LEFT JOIN 'users' ON parents.id = users.person_id and users.person_type = 'Parent'").where("users.id IS NULL OR users.id = #{person_id}")
    else
      p = Parent.joins("LEFT JOIN 'users' ON parents.id = users.person_id and users.person_type = 'Parent'").where("users.id IS NULL")
    end
    p.collect {|temp| [temp.first_name, temp.id]}
  end

end
