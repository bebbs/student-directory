def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	students = []
	#get the first name
	name = gets.chomp

	#while the name is not empty, repeat to add another one
	while !name.empty? do
		puts "Cohort: "
		cohort = gets.chomp
		#add the student hash to the array
		students << {:name => name, :cohort => cohort}
		if students.length > 1
			puts "Now we have #{students.length} students!"
		else
			puts "Now we have #{students.length} student!"
		end
		name = gets.chomp
	end
	#return the array of students
	students
end

def print_header
	puts "The students at Makers Academy: "
	puts "---------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} Cohort)"
	end
end

def print_footer(names)
	if names.length > 1
		puts "Overall we have #{names.length} students!"
	else
		puts "Overall we have #{names.length} student!"
	end
end

students = input_students
print_header
print(students)
print_footer(students)