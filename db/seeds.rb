# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Studygroup.create(department: "CS", class_number: 111, date: "11-31-15", time: "12:00PM")
  Studygroup.create(department: "ENG" ,class_number: 211, date: "11-12-15", time: "1:00PM")
  Studygroup.create(department: "MATH" , class_number: 101, date: "11-10-15", time: "11:00AM")

User.create(Firstname: 'John', Lastname: 'Smith', Username: 'Root',email: 'root@admin', password: 'root')
