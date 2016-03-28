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
student = Student.create(first_name: "harry", last_name: "Anderson", teacher_id: 2)
User.create(email: 'harry@gmail.com', password: 'password', person_id: student.id, person_type: "Student")
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
assignment_grade = AssignmentGrade.create(grade: 92, assignment_name: "Ruby on Rails", assignment_date: 2016-01-01, student_id: 4)
assignment_grade = AssignmentGrade.create(grade: 91, assignment_name: "Epidemiology", assignment_date: 2016-02-01, student_id: 4)
assignment_grade = AssignmentGrade.create(grade: 89, assignment_name: "Ruby on Rails", assignment_date: 2016-01-01, student_id: 3)

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

parent1 = Parent.create(first_name: "Marge", last_name: "Simpson", student_id: 2)
User.create(email: 'parent@school.com', password: 'password', person_id: 1, person_type: "Parent")

parent2 = Parent.create(first_name: "Chief", last_name: "Wiggum", student_id: 1)
User.create(email: 'parent@school.com', password: 'password', person_id: 2, person_type: "Parent")

grade1 = AssignmentGrade.create(grade: 88, assignment_name: "Book Report", assignment_date: Time.now, student_id: 1)
grade2 = AssignmentGrade.create(grade: 66, assignment_name: "Math Quiz", assignment_date: Time.now, student_id: 1)
grade3 = AssignmentGrade.create(grade: 100, assignment_name: "Book Report", assignment_date: Time.now, student_id: 2)
grade3 = AssignmentGrade.create(grade: 100, assignment_name: "Math Quiz", assignment_date: Time.now, student_id: 2)

supernintendo_chalmers = Principal.new(first_name: "SN", last_name: "Chalmers")
User.create(email: 'chalmers@school.com', password: 'password', person_id: supernintendo_chalmers.id, person_type: "Principal")
a1 = Achievement.create(name: "Perfect Attendance", description: "The first!", points: 100)
a2 = Achievement.create(name: "Apple for Teacher", description: "The second!", points: 200)
a10 = Achievement.create(name: "Honor Roll", description: "Um... the tenth?", points: 1000)
a11 = Achievement.create(name: "Almost Honor Roll", description: "Yay", points: 800)
a12 = Achievement.create(name: "Minimal Effort", description: "equivalent to participation award", points: 50)
a13 = Achievement.create(name: "Joined a Team", description: "Gooooo, Team!", points: 500)
a14 = Achievement.create(name: "School Club Officer", description: "Overachiever", points: 700)
a15 = Achievement.create(name: "Timeliness", description: "Good for you", points: 3000)
