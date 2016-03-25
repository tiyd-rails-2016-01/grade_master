class Principal < ActiveRecord::Base
  has_many :parents, through: :students
  has_many :users, as: :person
  has_many :students

  def self.number_of_teachers
    @teachers = Teacher.all
    @teachers.count
  end

  def self.number_of_students
    @students = Student.all
    @students.count
  end
end
