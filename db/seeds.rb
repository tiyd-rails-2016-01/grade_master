# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
t1 = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', password: 'password', person_id: t1.id, person_type: "Teacher")
student = Student.create(first_name: "eddie", last_name: "alvarez", teacher_id: 1)
User.create(email: 'eddie@gmail.com', password: 'password', person_id: student.id, person_type: "Student")
parent = Parent.create(first_name: "John", last_name: "Johnson", student_id: 1)
User.create(email: 'john@gmail.com', password: 'password', person_id: parent.id, person_type: "Parent")
teacher = Teacher.create(first_name: "Mrs.", last_name: "Cranky")
User.create(email: 'mrs@gmail.com', password: 'password', person_id: teacher.id, person_type: "Teacher")
student = Student.create(first_name: "Annie", last_name: "Anderson", teacher_id: 2)
User.create(email: 'annie@gmail.com', password: 'password', person_id: student.id, person_type: "Student")
parent = Parent.create(first_name: "Dan", last_name: "Leveigh", student_id: 2)
User.create(email: 'dan@gmail.com', password: 'password', person_id: parent.id, person_type: "Parent")
teacher = Teacher.create(first_name: "Ricky", last_name: "Ricardo")
User.create(email: 'ricky@gmail.com', password: 'password', person_id: teacher.id, person_type: "Teacher")
student = Student.create(first_name: "Anjana", last_name: "Smith", teacher_id: 3)
User.create(email: 'anjana@gmail.com', password: 'password', person_id: student.id, person_type: "Student")
parent = Parent.create(first_name: "Molly", last_name: "Ringworm", student_id: 3)
User.create(email: 'molly@gmail.com', password: 'password', person_id: parent.id, person_type: "Parent")

assignment_grade = AssignmentGrade.create(grade: 56, assignment_name: "Ruby on Rails", assignment_date: 2016-03-01, student_id: 2)
assignment_grade = AssignmentGrade.create(grade: 99, assignment_name: "Mini Boat Sailing", assignment_date: 2016-02-01, student_id: 1)
assignment_grade = AssignmentGrade.create(grade: 86, assignment_name: "Epidemiology", assignment_date: 2016-01-01, student_id: 3)
assignment_grade = AssignmentGrade.create(grade: 91, assignment_name: "Mini Boat Sailing", assignment_date: 2016-03-01, student_id: 2)
assignment_grade = AssignmentGrade.create(grade: 96, assignment_name: "Epidemiology", assignment_date: 2016-02-01, student_id: 1)
assignment_grade = AssignmentGrade.create(grade: 92, assignment_name: "Ruby on Rails", assignment_date: 2016-01-01, student_id: 3)
