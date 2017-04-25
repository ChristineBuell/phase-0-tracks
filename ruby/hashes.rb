=begin get client data from designer
After done, print back what user has entered
Ask for changes to information
loop through once
user must type 'none'
Print final version and exit
=end

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
client_info[:age] = gets.chomp
puts "How many childern live in the home? (0-?)"
client_info[:num_children] = gets.chomp
puts "Desired theme for home"
client_info[:theme] = gets.chomp
puts "Preferred color?"
client_info[:color_pref] = gets.chomp
puts "Home's square footage?"
client_info[:sq_ft] = gets.chomp
puts "How many pets in the home? (0-?)"
client_info[:num_pets] = gets.chomp
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
puts "How much does the client want to spend? (xxxx.xx)"
client_info[:budget] = gets.chomp

p client_info




puts "Do you want to want to make any changes to the information shown?"
puts "Type done to exit"
update = gets.chomp
if update != "done" 
	puts "which value do you wish to change?"
	value = gets.chomp.to_sym
	puts "Enter a new value"
	client_info[value] = gets.chomp
end

p "Completed Form"
p client_info





