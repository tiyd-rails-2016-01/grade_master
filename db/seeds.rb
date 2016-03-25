# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', password: 'password', person_id: teacher.id, person_type: "Teacher")

a1 = Achievement.create(name: "Perfect Attendance", description: "The first!", points: 100)
a2 = Achievement.create(name: "Apple for Teacher", description: "The second!", points: 200)
a10 = Achievement.create(name: "Honor Roll", description: "Um... the tenth?", points: 1000)
a11 = Achievement.create(name: "Almost Honor Roll", description: "Yay", points: 800)
a12 = Achievement.create(name: "Minimal Effort", description: "equivalent to participation award", points: 50)
a13 = Achievement.create(name: "Joined a Team", description: "Gooooo, Team!", points: 500)
a14 = Achievement.create(name: "School Club Officer", description: "Overachiever", points: 700)
a15 = Achievement.create(name: "Timeliness", description: "Good for you", points: 3000)


student = Student.create(first_name: "Marcia", last_name: "Corprew", teacher_id: teacher.id)
User.create(email: "marcia@mail.com", password: 'password', person_id: student.id, person_type: "Student")

student2 = Student.create(first_name: "Anjana", last_name: "Mohanty", teacher_id: teacher.id)
User.create(email: "marcia@mail.com", password: 'password', person_id: student.id, person_type: "Student")
