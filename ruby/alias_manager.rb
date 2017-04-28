=begin
Create alias:
Swap names (first and last)
Change letters
	swap vowels for the next vowel
	swap consonants for the the next consonant 
#2 arrays for final printout 
=end
puts "Enter a name to encode"
new_name = gets.chomp.downcase

vowels = "aeiou".split('') 
consonants = "bcdfghjklmnpqrstvwxyz".split('')
old_name = "bubba"
old_name += "smith"
name = new_name.split('')
vowel_count = 5
consonant_count = 21
n_index = 0
v_index = 0
c_index = 0
v_flag = false
count = name.count


puts old_name
while n_index < count
	puts "at top"
	puts name[n_index] + vowels[v_index]
 while v_index < vowel_count 
 	puts "top of in v < v count"
 	puts name[n_index] + vowels[v_index]	
 	if name[n_index] == vowels[v_index]
 		if name[n_index] == "u"
 			name[n_index] = "a"
 			break
 		else
 			puts "Im in else"
 			name[n_index] = vowels[v_index + 1]
 			break
 		end
 			puts "after end of if/else"
 			puts name[n_index] + vowels[v_index]
 			
 	end
  	v_index += 1
end
n_index += 1
v_index = 0
end
p name 
#consonants

n_index = 0

while n_index < count
	puts "at top"
	puts name[n_index] + consonants[c_index]
 while c_index < consonant_count 
 	puts "top of in c < c count"
 	puts name[n_index] + consonants[c_index]	
 	if name[n_index] == consonants[c_index]
 		if name[n_index] == "z"
 			name[n_index] = "b"
 			break
 		else
 			puts "Im in else"
 			name[n_index] = consonants[c_index + 1]
 			break
 		end
 			puts "after end of if/else"
 			puts name[n_index] + consonants[c_index]
 			
 	end
  	c_index += 1
end
n_index += 1
c_index = 0
end
puts name








