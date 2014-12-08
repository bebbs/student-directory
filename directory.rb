require 'csv'
@students = []

def print_menu
	puts "==== STUDENT DIRECTORY MENU ===="
	puts "Press 1 to input new students"
	puts "Press 2 to show a list of students"
	puts "Press 3 to save the student data to students.csv"
	puts "Press 4 to load the student data from students.csv"
	puts "Press 9 to exit"
end

def show_students
	print_header
	print_students_list
	print_footer
end

def process(selection)
	case selection
		when "1"
			input_students
		when "2"
			show_students
		when "3"
			save_students
		when "4"
			load_students
		when "9"
			exit
		else
			puts "Input not recognized, please try again!"
	end
end

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

def add_to_array(name, cohort)
	@students << { :name => name, :cohort => cohort }
end

def input_students
	puts ""
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."

	#get the first name
	name = gets.chomp

	#while the name is not empty, repeat to add another one
	while !name.empty? do
		puts "Cohort: "
		cohort = gets.chomp
		#add the student hash to the array
		add_to_array(name, cohort)
		if @students.length > 1
			puts "Now we have #{@students.length} students!"
		else
			puts "Now we have #{@students.length} student!"
		end
		name = gets.chomp
	end
end

def print_header
	puts "The students at Makers Academy: "
	puts "---------"
end

def print_students_list
	@students.each_with_index do |student, index|
		puts "#{index}. #{student[:name]} (#{student[:cohort]} Cohort)"
	end
end

def print_footer
	if @students.length > 1
		puts "Overall we have #{@students.length} students!"
	else
		puts "Overall we have #{@students.length} student!"
	end
end

def file_handler(filename, mode)
	@file = File.open(filename, mode)
end

def join_and_save
	# Iterate through the array of students, join the name and cohort data,
	# and save it to a new line in students.csv
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		@file.puts csv_line
	end
	@file.close
end

def save_students
	# Open a file to write too
	file_handler("students.csv", "w")
	join_and_save
end


def load_students
	CSV.foreach("students.csv", { :col_sep => ',' }) do |row|
		name = row[0]
		cohort = row[1]
		add_to_array(name, cohort)
	end
end

# Call the menu to start the directory
interactive_menu
