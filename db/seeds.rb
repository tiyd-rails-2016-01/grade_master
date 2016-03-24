# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

teacher = Teacher.create(first_name: "Admin", last_name: "Teacher")
User.create(email: 'admin@example.com', password: 'password', person_id: teacher.id, person_type: "Teacher")
supernintendo_chalmers = Principal.new(first_name: "SN", last_name: "Chalmers")
User.create(email: 'chalmers@school.com', password: 'password', person_id: "principal.id", person_type: "Principal")
