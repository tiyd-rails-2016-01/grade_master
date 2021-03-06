class Teacher < ActiveRecord::Base
  has_many :students
  has_many :users, as: :person
  validates :first_name, presence: true

  def self.for_select(person_id, person_type)
    if person_type == "Teacher"
      t = Teacher.joins("LEFT JOIN 'users' ON teachers.id = users.person_id and users.person_type = 'Teacher'").where("users.id IS NULL OR users.id = #{person_id}")
    else
      t = Teacher.joins("LEFT JOIN 'users' ON teachers.id = users.person_id and users.person_type = 'Teacher'").where("users.id IS NULL")
    end
    t.collect {|temp| [temp.first_name, temp.to_global_id]}
  end

end
