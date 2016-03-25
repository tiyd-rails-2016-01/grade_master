# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Brian", last_name: "Yarsawich")
User.create(email: 'byarsawich@example.com', password: 'monkey', github_user_name: 'byarsawich', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Jefferson", last_name: "Neel")
User.create(email: 'jneel@example.com',password: 'monkey', github_user_name: 'eljefeasu', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Anjana", last_name: "Mohanty")
User.create(email: 'anjanamohanty@example.com', password: 'monkey', github_user_name: 'anjanamohanty', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Jim", last_name: "Publicover")
User.create(email: 'Publicover@example.com', password: 'monkey', github_user_name: 'Publicover', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Kate", last_name: "Studwell")
User.create(email: 'katestud@example.com', password: 'monkey', github_user_name: 'katestud', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Steven", last_name: "Cooper")
User.create(email: 'stevengcooper@example.com', password: 'monkey', github_user_name: 'stevengcooper', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Molly", last_name: "Gehring")
User.create(email: 'mkg1@example.com', password: 'monkey', github_user_name: 'mkg1', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: '@example.com', password: 'monkey', github_user_name: '', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "Damian", last_name: "House")
User.create(email: 'damianhouse@example.com', password: 'monkey', github_user_name: 'damianhouse', person_id: teacher.id, person_type: "Teacher")

student = Student.create(first_name: "user", last_name: "user")
User.create(email: 'test@test.com', password: 'monkey', person_id: student.id, person_type: "Student")

a1 = Achievement.create(name: "Perfect Attendance", description: "The first!", points: 100)
a2 = Achievement.create(name: "Apple for Teacher", description: "The second!", points: 200)
a10 = Achievement.create(name: "Honor Roll", description: "Um... the tenth?", points: 1000)
a11 = Achievement.create(name: "Almost Honor Roll", description: "Yay", points: 800)
a12 = Achievement.create(name: "Minimal Effort", description: "equivalent to participation award", points: 50)
a13 = Achievement.create(name: "Joined a Team", description: "Gooooo, Team!", points: 500)
a14 = Achievement.create(name: "School Club Officer", description: "Overachiever", points: 700)
a15 = Achievement.create(name: "Timeliness", description: "Good for you", points: 3000)
