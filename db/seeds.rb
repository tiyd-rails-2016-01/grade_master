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

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'anjanamohanty@example.com', password: 'monkey', github_user_name: 'anjanamohanty', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'Publicover@example.com', password: 'monkey', github_user_name: 'Publicover', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'katestud@example.com', password: 'monkey', github_user_name: 'katestud', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'stevengcooper@example.com', password: 'monkey', github_user_name: 'stevengcooper', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'mkg1@example.com', password: 'monkey', github_user_name: 'mkg1', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: '@example.com', password: 'monkey', github_user_name: '', person_id: teacher.id, person_type: "Teacher")

teacher = Teacher.create(first_name: "user", last_name: "user")
User.create(email: 'damianhouse@example.com', password: 'monkey', github_user_name: 'damianhouse', person_id: teacher.id, person_type: "Teacher")
