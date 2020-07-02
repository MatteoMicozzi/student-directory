# first we print the list of students
# NB: cob(country of birth), h(hight in cm)
students = [
{name: "Dr. Hannibal Lecter", cohort: :Nov, hobby: "eat", cob: "USA", h: 160},
{name: "Darth Vader", cohort: :Nov, hobby: "Ping Pong", cob: "Milk way", h: 210},
{name: "Nurse Ratched", cohort: :Nov, hobby: "Darts", cob: "UK", h: 165},
{name: "Michael Corleone", cohort: :Nov, hobby: "Poker", cob: "IT", h: 180},
{name: "Alex DeLarge", cohort: :Nov, hobby: "Petting dolls", cob: "FR", h: 166},
{name: "The Wicked Witch of the West", cohort: :Nov, hobby: "Pray", cob: "USA", h: 168},
{name: "Terminator", cohort: :Nov, hobby: "Chess", cob: "Austria", h: 205},
{name: "Freddy Krueger", cohort: :Nov, hobby: "Sharpening", cob: "USA", h: 183},
{name: "The Jocker", cohort: :Nov, hobby: "Volunteering", cob: "Gotham", h: 175},
{name: "Joffrey Baratheon", cohort: :Nov, hobby: "Cars", cob: "USA", h: 160},
{name: "Norman Bates", cohort: :Nov, hobby: "Volley", cob: "UK", h: 162}
]

def input_students

  def enter_name
    puts "Enter name of student or to quit type exit & return twice"
    puts "NB: Live empty to reserve the position"
    name = gets.chomp.capitalize
    name = "Reserved for student" if name.empty?
    return name
  end

  def enter_month
    puts "Please enter the first 3 letters of the month of the cohort"
    puts "NB: Live empty for current month"
    while true do
      month = gets.chomp.capitalize
      break if ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec', ''].include?(month)
    end
    month = Time.now.asctime.split(" ")[1] if month.empty?
    return month
  end

  students = []
  name = enter_name
  month = enter_month
  while name != "Exit" do
    students << {name: name, cohort: month.to_sym}
    puts "now we have #{students.count} students"
    name = enter_name
    month = enter_month
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

def grup_by_cohort(stud)
  arr = []
  months = [:Jan, :Feb, :Mar, :Apr, :May, :Jun, :Jul, :Aug, :Sep, :Oct, :Nov, :Dec]
  months.map { |mon| stud.map { |sts| arr << sts if mon == sts[:cohort] } }
  arr
end

def print_header
  puts "The students of Villains Academy".center(50)
  puts "-----------------------------------------------".center(50)
end

def print(stud)
  num = 0
  until num == stud.count
    name = stud[num]
    num += 1
    puts "#{num}.".center(4) + "#{name[:name]}".center(30) + "(#{name[:cohort]} cohort)"
  end
end

def print_footer(sts)
  print_out = " -----  Overall, we have #{sts.count} great student"
  print_out << "s" if sts.count > 1
  puts print_out
end

# Just add or erase '#' at the beginning of the first group, of methods,
# to make them ready to run, or not, depends of your choice.

students = input_students
#students = names_start_by(students)
#students = less_than_12chrs(students)
#students = grup_by_cohort(students)

print_header
print(students)
print_footer(students)
