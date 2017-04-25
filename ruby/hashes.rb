=begin get client data from designer
After done, print back what user has entered
Ask for changes to information
loop through once
user must type 'none'
Print final version and exit
=end

client_info = {
	"full_name" => "",
	age: nil,
	num_children: nil,
	theme: "",
	color_pref: "",
	sq_ft: nil,
	num_pets: nil,
	cats: "",
	dogs: "",
	budget: nil

}

puts "Client Name"
full_name = gets.chomp
puts "#{full_name}'s age"
age = gets.chomp.to_i 
puts "How many childern live in the home? (0-?)"
num_children = gets.chomp.to_i
puts "Desired theme for home"
theme = gets.chomp
puts "Preferred color?"
color_pref = gets.chomp
puts "Home's square footage?"
sq_ft = gets.chomp.to_i
puts "How many pets does #{full_name} have? (0-?)"
num_pets = gets.chomp.to_i
puts "Any cats? (y/n)"
cats = gets.chomp
if cats != "y" || cats != "n"
 	until cats == "y" || cats == "n"
 		puts "This is a yes or no answer! Please enter (y/n)"
 		cats = gets.chomp
 	end
end
puts "Any dogs? (y/n)"
dogs = gets.chomp
if dogs != "y" || dogs != "n"
 	until dogs != "y" || dogs != "n"
 		puts "This is a yes or no answer! Please enter (y/n)"
 		dogs = gets.chomp
 	end
 end
puts "How much does the #{full_name} want to spend? (xxxx.xx)"
budget = gets.chomp.to_f




puts "Client's name: #{full_name}"
puts "Age #{age}"
puts "#{full_name} has #{num_children} children in the home"
puts "Chosen theme: #{theme}"
puts "#{full_name} prefers the color #{color_pref}"
puts "The home is #{sq_ft} square feet"
puts "Pets: #{num_pets}"
puts "Cats: #{cats}"
puts "Dogs: #{dogs}"
#Forces 2 0's after decimal point.
puts "#{full_name} has a budget of around $%0.2f" % [budget]




