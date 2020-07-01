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
def print_header
puts "The students of Villains Academy"
puts "----------------------"
end
def print(names)
names.each { |student| puts student }
end
# finally we print the total number of students
def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
