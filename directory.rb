# first we print the list of students

students = [
{name: "Dr. Hannibal Lecter", cohort: :november},
{name: "Darth Vader", cohort: :november},
{name: "Nurse Ratched", cohort: :november},
{name: "Michael Corleone", cohort: :november},
{name: "Alex DeLarge", cohort: :november},
{name: "The Wicked Witch of the West", cohort: :november},
{name: "Terminator", cohort: :november},
{name: "Freddy Krueger", cohort: :november},
{name: "The Jocker", cohort: :november},
{name: "Joffrey Baratheon", cohort: :november},
{name: "Norman Bates", cohort: :november}
]

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: :november}
    puts "now we have #{students.count} students"
    name = gets.chomp
  end
  students
end
def print_header
puts "The students of Villains Academy"
puts "----------------------"
end
def print(student)
student.each { |student| puts "#{student[:name]} (#{student[:cohort]} cohort)" }
end
# finally we print the total number of students
def print_footer(stu_num)
puts "Overall, we have #{stu_num.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
