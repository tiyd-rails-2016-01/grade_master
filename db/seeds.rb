teacher = Teacher.create(first_name: "Ms. Teresa", last_name: "Albright")
User.create(email: 'admin@example.com', password: 'password', person_id: 1, person_type: "Teacher")

supernintendo_chalmers = Principal.new(first_name: "SN", last_name: "Chalmers")
User.create(email: 'chalmers@school.com', password: 'password', person_id: 1, person_type: "Principal")

student = Student.create(first_name: "Ralph", last_name: "Wiggum", teacher_id: 1)
User.create(email: 'student@school.com', password: 'password', person_id: student.id, person_type: "Student")

parent = Parent.create(first_name: "Chief", last_name: "Wiggum", student_id: 1)
User.create(email: 'parent@school.com', password: 'password', person_id: parent.id, person_type: "Parent")

grade = AssignmentGrade.create(grade: "C-", assignment_name: "Book Report", assignment_date: Time.now, student_id: 1
