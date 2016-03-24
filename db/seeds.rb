# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', password: 'password', person_id: 1, person_type: "Teacher")
supernintendo_chalmers = Principal.new(first_name: "SN", last_name: "Chalmers")
User.create(email: 'chalmers@school.com', password: 'password', person_id: 1, person_type: "Principal")
student = Student.create(first_name: "Ralph", last_name: "Wiggum", teacher_id: 1)
User.create(email: 'student@school.com', password: 'password', person_id: student.id, person_type: "Student")
parent = Parent.create(first_name: "Chief", last_name: "Wiggum", student_id: 1)
User.create(email: 'parent@school.com', password: 'password', person_id: parent.id, person_type: "Parent")
grade = AssignmentGrade.create(grade: "C-", assignment_name: "Book Report", assignment_date: "3-24-2016", student_id: 1)
