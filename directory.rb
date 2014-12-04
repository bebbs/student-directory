@students = []

def print_menu
	puts "==== STUDENT DIRECTORY MENU ===="
	puts "Press 1 to input new students"
	puts "Press 2 to show a list of students"
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
		@students << {:name => name, :cohort => cohort}
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
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} Cohort)"
	end
end

def print_footer
	if @students.length > 1
		puts "Overall we have #{@students.length} students!"
	else
		puts "Overall we have #{@students.length} student!"
	end
end

# Call the menu to start the directory
interactive_menu
