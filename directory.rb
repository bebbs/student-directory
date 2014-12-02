students = [
	"Dr. Hannibal Lecter",
	"Darth Vader",
    "Nurse Ratched",
    "Michael Corleone",
    "Alex De Large",
    "The Alien",
    "Terminator",
    "Freddy Kruger",
    "The Joker",
	]

def print_header
	puts "The students at Makers Academy: "
	puts "---------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall we have #{names.length} students!"
end

print_header
print(students)
print_footer(students)