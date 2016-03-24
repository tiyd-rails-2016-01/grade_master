class Teacher < ActiveRecord::Base
  has_many :students
  has_many :users, as: :person
  validates :first_name, presence: true

end
