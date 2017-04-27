

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
cars.map! do |car|
	 car.reverse!
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

#Release 2
# Arrays
# 1)deletes even numbers
numbers = [ 1, 2, 3, 4, 5, 6]
p numbers

 numbers.delete_if { |number| number % 2 == 0}
 p numbers


# 2)keeps even numbers
numbers = [ 1, 2, 3, 4, 5, 6]
p numbers
  numbers.keep_if { |number| number % 2 == 0}
 p numbers

 numbers = [ 1, 2, 3, 4, 5, 6]
p numbers

# 3)keeps odd numbers
numbers.select! {|number| number.odd?}
p numbers

# 4)Deletes and stops iterating when returnss false. Returns new array
numbers = [ 1, 2, 3, 4, 5, 6]
p numbers
new_numbers = numbers.drop_while {|number| number < 4 }
p new_numbers

# Hashes
food_groups = {
	"banana" => "fruit",
	"carrot" => "vegetable",
	"apple" => "fruit",
	"green bean" => "vegetable",
	"potato" => "vegetable",
	"cherries" => "fruit"
}
# 1) deletes items that meet condition		
p food_groups
food_groups.delete_if{ |food, type| type == "fruit" }
p food_groups
###################

food_groups = {
	"banana" => "fruit",
	"carrot" => "vegetable",
	"apple" => "fruit",
	"green bean" => "vegetable",
	"potato" => "vegetable",
	"cherries" => "fruit"
}
# 2) keeps items that meet condition		
p food_groups
food_groups.keep_if{ |food, type| type == "fruit" }
p food_groups
####################
food_groups = {
	"banana" => "fruit",
	"carrot" => "vegetable",
	"apple" => "fruit",
	"green bean" => "vegetable",
	"potato" => "vegetable",
	"cherries" => "fruit"
}
# 3) keeps items that meet condition		
p food_groups
food_groups.select!{ |food, type| type == "vegetable" }
p food_groups
##################
food_groups = {
	"banana" => "fruit",
	"carrot" => "vegetable",
	"apple" => "fruit",
	"green bean" => "vegetable",
	"potato" => "vegetable",
	"cherries" => "fruit"
}
# 4) Returns array of values for certain keys 
items = food_groups.values_at("potato", "apple")
	p items





