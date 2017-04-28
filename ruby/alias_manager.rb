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

# Real Name array
real_name = Array.new(10) { Array.new(10) }
# Code name array
code_name = Array.new(10) { Array.new(10) }

#vowel and consonant strings for comparisons
vowels = "aeiou".split('') 
consonants = "bcdfghjklmnpqrstvwxyz".split('')
# Lengths of strings for comparisons
vowel_count = 5
consonant_count = 21
input_index = 0

#get first and last names, check for done
puts "Enter a first name to encode or type done"
new_name = gets.chomp.downcase
while new_name != "done"
puts input_index
real_name[input_index][0] = new_name
puts real_name[input_index][0]
puts "Now enter a last name to encode"
real_last_name = gets.chomp.downcase
code_name[input_index][1] = real_last_name
puts code_name[input_index][1]

input_index += 1 


name = new_name.split('')

name_index = 0
v_index = 0
c_index = 0
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
 			puts name[name_index] + consonants[c_index]
 	end
  	c_index += 1
end
name_index += 1
c_index = 0
end
puts name.join
puts real_name[input_index][0]
puts "Enter a first name to encode or type done"
new_name = gets.chomp.downcase
input_index += 1
puts input_index

end
