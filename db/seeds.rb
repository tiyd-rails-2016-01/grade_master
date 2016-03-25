# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher1 = Teacher.create(first_name: "Ms. Teresa", last_name: "Albright")
User.create(email: 'admin@example.com', password: 'password', person_id: 1, person_type: "Teacher")

teacher2 = Teacher.create(first_name: "Ms. Edna", last_name: "Krabappel")
User.create(email: 'Krabappel@example.com', password: 'password', person_id: 2, person_type: "Teacher")

student1 = Student.create(first_name: "Ralph", last_name: "Wiggum", teacher_id: 1)
User.create(email: 'student@school.com', password: 'password', person_id: 4, person_type: "Student")

student2 = Student.create(first_name: "Lisa", last_name: "Simpson", teacher_id: 2)
User.create(email: 'student@school.com', password: 'password', person_id: 5, person_type: "Student")

parent1 = Parent.create(first_name: "Marge", last_name: "Simpson", student_id: 2)
User.create(email: 'parent@school.com', password: 'password', person_id: 6, person_type: "Parent")

parent2 = Parent.create(first_name: "Chief", last_name: "Wiggum", student_id: 1)
User.create(email: 'parent@school.com', password: 'password', person_id: 8, person_type: "Parent")

grade1 = AssignmentGrade.create(grade: "C-", assignment_name: "Book Report", assignment_date: Time.now, student_id: 1)
grade2 = AssignmentGrade.create(grade: "D", assignment_name: "Math Quiz", assignment_date: Time.now, student_id: 1)
grade3 = AssignmentGrade.create(grade: "A++", assignment_name: "Book Report", assignment_date: Time.now, student_id: 2)
grade3 = AssignmentGrade.create(grade: "A+", assignment_name: "Math Quiz", assignment_date: Time.now, student_id: 2)

supernintendo_chalmers = Principal.new(first_name: "SN", last_name: "Chalmers")
User.create(email: 'chalmers@school.com', password: 'password', person_id: 3, person_type: "Principal")
