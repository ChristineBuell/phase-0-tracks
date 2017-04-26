=begin get client data from designer
After done, print back what user has entered
Ask for changes to information
loop through once
user must type 'none'
Print final version and exit
=end

#Array example commented out at the bottom!!

client_info = {

	full_name: "",
	age: 0,
	num_children: 0,
	theme: "",
	color_pref: "",
	sq_ft: 0,
	num_pets: 0,
	cats: "",
	dogs: "",
	budget: 0

}
puts "Please fill out client form."
puts "Client's full name"
client_info[:full_name] = gets.chomp
puts "client's age"
client_info[:age] = gets.chomp.to_i
puts "How many childern live in the home? (0-?)"
client_info[:num_children] = gets.chomp.to_i
puts "Desired theme for home"
client_info[:theme] = gets.chomp
puts "Preferred color?"
client_info[:color_pref] = gets.chomp
puts "Home's square footage?"
client_info[:sq_ft] = gets.chomp
puts "How many pets in the home? (0-?)"
client_info[:num_pets] = gets.chomp.to_i
if client_info[:num_pets] > 0 
puts "Any cats? (y/n)"
client_info[:cats] = gets.chomp
if client_info[:cats] != "y" || client_info[:cats] != "n"
 	until client_info[:cats] == "y" || client_info[:cats] == "n"
 		puts "This is a yes or no answer! Please enter (y/n)"
 		client_info[:cats] = gets.chomp
 	end
end
puts "Any dogs? (y/n)"
client_info[:dogs] = gets.chomp
if client_info[:dogs] != "y" || client_info[:dogs] != "n"
 	until client_info[:dogs] == "y" || client_info[:dogs] == "n"
 		puts "This is a yes or no answer! Please enter (y/n)"
 		client_info[:dogs] = gets.chomp
 	end
 end
end
puts "How much does the client want to spend? (xxxx.xx)"
client_info[:budget] = gets.chomp.to_f

p client_info

#Here is my accomplishemnts array! 

=begin

# Initialize array with values
accomplishments = ["git", "html", "css", "data types", "irb", "debugging", "looping", "if/elsif/else"]
puts "Here are some accomplishments for the past few weeks #{accomplishments}"
puts ""
# Insert new value at index 3
accomplishments.insert(3, "algorithms")

latest_accomplishment = "used data structures in Ruby"
# Added "used data structures in Ruby" to array of accomplishments. 
accomplishments.push(latest_accomplishment)


#print out new array
puts "Here is my updated accomplishment list:"
array_length = accomplishments.length
index = 0

while index < array_length 
puts accomplishments[index]
index += 1
end
=end

