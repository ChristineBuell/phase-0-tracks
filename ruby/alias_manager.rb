=begin
Create alias:
Swap names (first and last)
Change letters
	swap vowels for the next vowel
	swap consonants for the the next consonant 
#2 arrays for final printout 
=end

vowels = "aeiou".chars 
consonants = "bcdfghjklmnpqrstvwxyz".chars 

name = "bob".split('')
consonant_list = 21
vowel_list = 5
n_index = 0
v_index = 0
c_index = 0

while n_index < 3
 while v_index < vowel_list 

 	if name[n_index] == vowels[v_index]
 		if name[n_index] == "u"
 			name[n_index] = "a"
 		else
 			name[n_index] = vowels[v_index + 1]
  			puts name[n_index]
 		end
 

 	end
  	v_index += 1
  	puts "v_index: #{v_index}"
end
n_index += 1
puts "n_index: #{n_index}"
v_index = 0
end







