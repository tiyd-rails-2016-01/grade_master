# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', password: 'password', person_id: teacher.id, person_type: "Teacher")

a1 = Achievement.create(name: "One", description: "The first!", points: 100)
a2 = Achievement.create(name: "Two", description: "The second!", points: 200)
a10 = Achievement.create(name: "Ten", description: "Um... the tenth?", points: 1000)

student = Student.create(first_name: "Marcia", last_name: "Corprew", teacher_id: teacher.id)
User.create(email: "marcia@mail.com", password: 'password', person_id: student.id, person_type: "Student")
