

def status
	puts "Your status is"
	yield("incomplete", "complete")
end

status { |x, y| puts "Current status is #{x} and #{y}"}

def print_status 
	status1 = "Incomplete"
	status2 = "Complete"
puts "Your status is:"
yield("status1", "status2")

end

print_status { |status1, status2| puts "Your status is: #{status1} or #{status2}!"}


#Iterating with .each and .map!

cars = ["ford", "toyota", "mazda", "vw", "skoda", "fiat"]

p cars 
#Beginning data with .each
cars.each do |car|
	puts car
end

p cars 
puts "Altering with .map! call:"

#Modify with .map!
cars.map do |car|
	puts car.reverse!
end
puts "After .map call: "
p cars

#Iterate through a hash with .each

books = {
	"Peter Cooper" => "Beginning Ruby",
	"David Block" => "The Well-Grounded Rubyist",
	"Marijn Haverbeke" => "Eloquent JavaScript",
	"Peter Gasston" => "The Book of CSS3",
	"Matt Neuburg" => "Programming in iOS 10"
}
p books
books.each do |author, title|
	puts "#{author} is the author of #{title}"
end

