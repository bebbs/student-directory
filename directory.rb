def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	students = []
	#get the first name
	name = gets.chomp
	#while the name is not empty, repeat to add another one
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => "December"}
		puts "Now we have #{students.length} students!"
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
	puts "Overall we have #{names.length} students!"
end

students = input_students
print_header
print(students)
print_footer(students)