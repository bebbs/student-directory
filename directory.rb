students = [
	["Dr. Hannibal Lecter", :december],
	["Darth Vader", :december],
    ["Nurse Ratched", :december],
    ["Michael Corleone", :december],
    ["Alex De Large", :december],
    ["The Alien", :december],
    ["Terminator", :december],
    ["Freddy Kruger", :december],
    ["The Joker", :december]
	]

def print_header
	puts "The students at Makers Academy: "
	puts "---------"
end

def print(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} students!"
end

print_header
print(students)
print_footer(students)