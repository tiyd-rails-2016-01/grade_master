class Principal < ActiveRecord::Base
  # has_many :teachers
  # has_many :students, through: :teachers
  # has_many :parents, though: :students
  has_many :users, as: :person
end
