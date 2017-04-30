=begin
Create alias:
Swap names (first and last)
Save names in original name array
Take names one at a time
Change letters
	swap vowels for the next vowel
	swap consonants for the the next consonant 
	save in code name array
# 2 arrays for final printout loop by index
=end

def aliasize(name)
	#vowel and consonant strings for comparisons
	vowels = "aeiou".split('') 
	consonants = "bcdfghjklmnpqrstvwxyz".split('')
	# Lengths of strings for comparisons
	vowel_count = 5
	consonant_count = 21
	# index for iterating through name
	name_index = 0
	# Vowel and consonant indices
	v_index = 0
	c_index = 0
	# length or name
	count = name.count


	# First loops through to change vowels
	while name_index < count
	 	while v_index < vowel_count 
	 		if name[name_index] == vowels[v_index]
	 			if name[name_index] == "u"
	 				name[name_index] = "a"
	 				break
	 			else
	  				name[name_index] = vowels[v_index + 1]
	 				break
	 			end	
	 		end
	  		v_index += 1
		end
		name_index += 1
		v_index = 0
	end

	# Then loops through to change consonants
	name_index = 0

	while name_index < count
	 	while c_index < consonant_count 
	 		if name[name_index] == consonants[c_index]
	 			if name[name_index] == "z"
	 				name[name_index] = "b"
	 				break
	 			else
	 				name[name_index] = consonants[c_index + 1]
	 				break
	 			end
	 		end
	  		c_index += 1
		end
		name_index += 1
		c_index = 0
	end
	puts name.join
	return name

end

# Real Name array
real_name = Array.new(100) { Array.new(100) }
# Code name array
code_name = Array.new(100) { Array.new(100) }
starting_name = ""

puts "Enter a first and last name to encode or type exit"
#get first and last names, check for done
starting_name = gets.chomp.downcase
while starting_name == ""
	starting_name = gets.chomp.downcase
end
input_index = 0
while starting_name != "exit"
	
	# Get aliased
	# String split into 2 word string array
	whole_name = starting_name.split(' ')
	# First word split into character array
	name = whole_name[0].split('')
	# Calls alias method, returns first name
	temp_alias = aliasize(name)
	# First name joined to single word string, assigned to code name array
	# Capitalized and entered entered in the second name cell to swap names
	code_name[input_index][1] = temp_alias.join.capitalize
	# Last name repeats previous, put into first name cell
	name = whole_name[1].split('')
	temp_alias = aliasize(name)
	code_name[input_index][0] = temp_alias.join.capitalize
	real_first = whole_name[0]
	real_last = whole_name[1]
	# Assign original names to real_name array before moving on
	# Capitalize also
	real_name[input_index][0] = real_first.capitalize
	real_name[input_index][1] = real_last.capitalize

	
	# Print code name to the screen
	puts "Code name is: #{code_name[input_index][0]} #{code_name[input_index][1]}"
	input_index += 1
	puts "Enter another first and last name to encode or type exit"
	starting_name = gets.chomp.downcase
	while starting_name == ""
	starting_name = gets.chomp.downcase
	end
end

puts input_index
# Print out final results
length = 0

puts "Here is the complete list:"
puts ""
while length < input_index
puts "#{real_name[length][0]} #{real_name[length][1]}'s code name is #{code_name[length][0]} #{code_name[length][1]}"
length += 1
end



