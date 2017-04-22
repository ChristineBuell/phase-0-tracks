#Encrypt
#Ask for a password
#Check for latter 'z' edge case
#Change password by advancing each letter one letter forward
#Return encryped password







def encrypt(password)
alphabet = "abcdefghijklmnopqrstuvwxyz"
index = 0
while index < password.length
	letter = password[index]
	a = alphabet.index(letter)
	#check for edge case, then replaces letter at index 
	#with letter one forward.
	if a == 25
		password[index] = alphabet[0]
	else
	    password[index] = alphabet[a + 1]
	end 
	index += 1
end
#'p' returns the value
p password
end


#Decrypt method
#Get password from user
#Check password for letter 'a' edgecase
#find index of each letter and decrement index by one
#return decrypted password

def decrypt (password)
alphabet = "abcdefghijklmnopqrstuvwxyz"

index = 0
while index <  password.length
	letter = password[index]
	a = alphabet.index(letter)
	#check for edge case, then replaces letter at index
	#with letter one back.
	if a == 0
		password[index] = alphabet[25]
	else
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
#Ask user for a password made of letters
#Perform encrypt or dectrypt


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

#password = "abc"
#encrypt(password)
#password = "zed"
#encrypt(password)
#password = "bcd"
#decrypt(password)
#password = "afe"
#decrypt(password)

#At first it didn't work.  We'd used "puts" to print out the data, but it wasn't returning it.
#Using 'p' caused the encrypt method to return the value, which was then passed in to the decrypt method.
#password = "swordfish"
#decrypt(encrypt(password))




