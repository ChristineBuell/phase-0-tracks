#Current year for calculations
this_year = 2017

#Check for how many employees to screen
puts "How many employees are being entered?"
number = gets.chomp.to_i

#Loop through the form 
while number > 0

puts "What is your name?"
name = gets.chomp()
puts "How old are you?"
age = gets.chomp().to_i
puts "What year were you born?"
birth_year = gets.chomp().to_i

#Make sure the data entered in proper format
puts "Our company cafeteria serves garlic bread. Should we order you some? (y/n)"
garlic = gets.chomp()
	if garlic.downcase != "y" && garlic.downcase != "n"
		begin
		puts "You need to enter (y/n)"
		garlic = gets.chomp()
		end until garlic.downcase == "y" || garlic.downcase == "n"
	end 	

#Make sure the data entered in proper format	
puts "Would you like to enroll in the company's health insurance? (y/n)"
insurance = gets.chomp()
	if insurance.downcase != "y" && insurance.downcase != "n"
		begin
		puts "You need to enter (y/n)"
		insurance = gets.chomp()
		end until insurance.downcase == "y" || insurance.downcase == "n"
	end 		

#Check for allergies
puts "Please tell what allergies you have"
puts "When you are finished type the word done"
is_vampire = nil
allergy = gets.chomp()
while allergy.downcase != "done"
	#Answering sunshine stops loop
	if allergy.downcase == "sunshine"
		is_vampire = true
		allergy = "done"
	else
		puts "Tell me another allergy you have."
		allergy = gets.chomp()
	end
end

# Check to see if age checks out!
if this_year - birth_year == age
	age_check = true
else 
	age_check = false
end		

#Vampire Drill Down!
	if name == "Drake Cula" || name == "Tu Fang" || is_vampire == true
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

#decrement counter
number -= 1
end
 puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends. :-)" 





