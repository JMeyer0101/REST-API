# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Studygroup.create(department: "CS", class_number: 111, date: "11-31-15", time: "12:00PM", description: "We are meeting in library studyroom 113")
  Studygroup.create(department: "ENG" ,class_number: 211, date: "11-12-15", time: "1:00PM", description: "Library studyroom 123")
  Studygroup.create(department: "MATH" , class_number: 101, date: "11-10-15", time: "11:00AM", description: "We are meeting at Mr. Taco")



Studygroup.create(department: "CS", class_number: 111, date: "11-31-15", time: "12:00PM", description: "We are meeting in library studyroom 113")
Studygroup.create(department: "ENG", class_number: 301, date: "11-31-15", time: "3:00PM", description: "meeting at the USU")
Studygroup.create(department: "HIST", class_number: 130, date: "11-31-15", time: "2:00PM", description: "Library Studygroom")
Studygroup.create(department: "ENG", class_number: 300, date: "11-31-15", time: "12:00PM", description: "TBD")
Studygroup.create(department: "CHEM", class_number: 301, date: "11-31-15", time: "6:00PM", description: "Give opinion on where we should meet")
Studygroup.create(department: "PHYS", class_number: 301, date: "11-31-15", time: "8:00PM", description: "meeting at wow cafe")
Studygroup.create(department: "CS", class_number: 111, date: "11-31-15", time: "12:00PM", description: "library studyroom 111")
Studygroup.create(department: "SOC", class_number: 111, date: "11-31-15", time: "12:00PM", description: "Meeting in SBS building 2nd floor")
Studygroup.create(department: "BIO", class_number: 111, date: "11-31-15", time: "3:00PM", description: "markstein 242")
Studygroup.create(department: "HIST", class_number: 111, date: "11-31-15", time: "1:00PM", description: "Meeting outside the USU")

User.create(Firstname: 'John', Lastname: 'Smith', Username: 'Root',email: 'root@admin', password: 'root')


StudygroupsUser.create(studygroup_id: 1, user_id: 1);
StudygroupsUser.create(studygroup_id: 2, user_id: 1);
StudygroupsUser.create(studygroup_id: 3, user_id: 1);

GroupComment.create(studygroup_id: 1, comment: "hey dude", user: "Joey");
GroupComment.create(studygroup_id: 1, comment: "hey are we still meeting?", user: "Jamee85");
GroupComment.create(studygroup_id: 2, comment: "hey dude", user: "MikeDude");
GroupComment.create(studygroup_id: 2, comment: "hey dude", user: "SilkyWu");
GroupComment.create(studygroup_id: 3, comment: "hey dude", user: "Will");
GroupComment.create(studygroup_id: 3, comment: "hey dude", user: "Root");
GroupComment.create(studygroup_id: 1, comment: "yea we are", user: "Root");
GroupComment.create(studygroup_id: 5, comment: "hey dude", user: "Root");
GroupComment.create(studygroup_id: 5, comment: "hey dude", user: "SaraC");
GroupComment.create(studygroup_id: 1, comment: "hey dude", user: "milquetoast28");
