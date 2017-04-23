#Encrypt
#Ask for a password
#Check password length for looping
#Check for letter 'z' edge case
#Loop through password using index, getting index in alphabet string corresponding to password letter
# 	if letter 'z' change letter at index to 'a'
#Change password by advancing each letter one letter forward using index
#Return encryped password

def encrypt(password)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0
while index < password.length
	#get letter of password at index
	letter = password[index]
	#get index number of same letter in alphabet string.
	a = alphabet.index(letter)
	#check for edge case, then replaces letter at index 
	#with letter one forward.
	if a == 25
		#Edge case, if it's an 'z', make it go "forward" to 'a'
		password[index] = alphabet[0]
	else
		#assign letter at index the letter + 1 in alphabet index
	    password[index] = alphabet[a + 1]
	end 
	index += 1
	password
end
#'p' returns the value
p password
end


#Decrypt method
#Get password from user
#Check password length for looping
#Check for letter 'a' edge case
#Loop through password using index, getting index in alphabet string corresponding to password letter
# 	if letter 'a' change letter at index to 'z'
#Change password by changing each letter at index one lower index in the alphabet string.
#Return decryped password

def decrypt (password)
alphabet = "abcdefghijklmnopqrstuvwxyz"

index = 0
while index <  password.length
	#get letter of password at index
	letter = password[index]
 	#get index number of same letter in alphabet string.
	a = alphabet.index(letter)
	#check for edge case, then replaces letter at index
	#with letter one back.
	if a == 0
		#Edge case, if it's an 'a', make it go "back" to 'z'
		password[index] = alphabet[25]
	else
		#assign letter at index the letter - 1 in alphabet index
	    password[index] = alphabet[a - 1]
	end 
	index += 1
end
#'p' returns the value
p password
end 



#Release 5
#Ask user if they want encrypt or decrypt. 
#Ask for 'e' or 'd'
#Make sure they entered proper letter
#Ask user for a password made of letters
#Call encrypt or decrypt method


puts "Would you like to encrypt or decrypt a password?"
puts "Enter 'e' for encrypt and 'd' for decrypt."

choice = gets.chomp
while choice != "e" && choice != "d"
	puts "I'm sorry, but #{choice} isn't an option"
	puts "Please enter 'e' or 'd'!"
	choice = gets.chomp
end

puts "Enter a password made up of letters: "
password = gets.chomp

if choice == "e"
	encrypt(password)
elsif choice == "d"
	decrypt(password)
end

#driver code
#Testing the encrypt method, regular case and edge case.
#password = "abc"
#encrypt(password)
#password = "zed"
#encrypt(password)

#Testing the decrypt method, regular case and edge case
#password = "bcd"
#decrypt(password)
#password = "afe"
#decrypt(password)

#At first the nested method call didn't work.  We'd used "puts" to print out the data, but it wasn't returning it.
#Using 'p' caused the encrypt method to return the value in "password", which was then passed in to the decrypt method. 

#password = "swordfish"
#decrypt(encrypt(password))




