# first we print the list of students
students = [
"Dr. Hannibal Lecter",
"Darth Vader",
"Nurse Ratched",
"Michael Corleone",
"Alex DeLarge",
"The Wicked Witch of the West",
"Terminator",
"Freddy Krueger",
"The Jocker",
"Joffrey Baratheon",
"Norman Bates"
]
puts "The students of Villains Academy"
puts "----------------------"
students.each { |student| puts student }
# finally we print the total number of students
puts "Overall, we have #{students.count} great students"
