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

def names_start_by(stud)
  arr = []
  puts "Enter the letter to select names start by..."
  letter = gets.chomp.upcase
  puts "Students start by #{letter}"
  stud.each { |name| arr << name if name[:name].chr == letter }
  arr
end

def less_than_12chrs(stud)
  arr = []
  puts "Students name with characters less then 12"
  stud.each { |name| arr << name if name[:name].length < 12 }
  arr
end

def print_header
  puts "The students of Villains Academy"
  puts "----------------------"
end

def print(student)
  num = 1
  student.each { |student| puts "#{num}. #{student[:name]} (#{student[:cohort]} cohort)"
    num += 1 }
end

def print_footer(stu_num)
puts "Overall, we have #{stu_num.count} great students"
end

#students = input_students
#students = names_start_by(students)
students = less_than_12chrs(students)
print_header
print(students)
print_footer(students)
