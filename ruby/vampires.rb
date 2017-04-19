this_year = 2017

puts "What is your name?"
name = gets.chomp()
puts "How old are you?"
age = gets.chomp().to_i
puts "What year were you born?"
birth_year = gets.chomp().to_i
puts "Our company cafeteria serves garlic bread. Should we order you some? (y/n)"
garlic = gets.chomp()
	if garlic.downcase != "y" && garlic.downcase != "n"
		begin
		puts "You need to enter (y/n)"
		garlic = gets.chomp()
		end until garlic.downcase == "y" || garlic.downcase == "n"
	end 		
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp()
	if insurance.downcase != "y" && insurance.downcase != "n"
		begin
		puts "You need to enter (y/n)"
		insurance = gets.chomp()
		end until insurance.downcase == "y" || insurance.downcase == "n"
	end 		



# Check to see if age checks out!
if this_year - birth_year == age
	age_check = true
else 
	age_check = false
end		

#Vampire Drill Down
	if name == "Drake Cula" || name == "Tu Fang"
		print "Definitely a vampire"
	elsif age_check == false && (garlic == "n" && insurance == "n")
		puts "Almost certainly a vampire"
	elsif age_check == false && (garlic == "n" || insurance == "n")
		puts "Might be a vampire"
	elsif age_check == true && (garlic == "y" || insurance == "y")
		puts "Probably not a vampire"
	else
		puts "Results inconclusive"	
	end


puts "Your answers were name: #{name}, age: #{age}, you were born in: #{birth_year}, garlic: #{garlic}, and insurance: #{insurance}."
puts age_check



