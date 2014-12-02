students = [
	{ :name => "Dr. Hannibal Lecter", :cohort => "December" },
	{ :name => "Darth Vader", :cohort => "December" },
    { :name => "Nurse Ratched", :cohort => "December" },
    { :name => "Michael Corleone", :cohort => "December" },
    { :name => "Alex De Large", :cohort => "December" },
    { :name => "The Alien", :cohort => "December" },
    { :name => "Terminator", :cohort => "December" },
    { :name => "Freddy Kruger", :cohort => "December" },
    { :name => "The Joker", :cohort => "December" }
	]

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

print_header
print(students)
print_footer(students)