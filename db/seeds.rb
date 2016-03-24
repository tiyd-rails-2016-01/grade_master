# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', github_user_name: 'byarsawich', person_id: teacher.id, person_type: "Teacher")
