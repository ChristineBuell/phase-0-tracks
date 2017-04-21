#Encrypt
#Ask for a password
#change password by advancing each letter one letter forward
#if statement for letter z


def encrypt(password)
alphabet = "abcdefghijklmnopqrstuvwxyz"
str = ""
index = 0


while index < password.length 
	letter = password[index]
	a = alphabet.index(letter)

	if a == 25
		str += alphabet[0]
	else
	    str += alphabet[a + 1]
	end 
	index += 1
end
password = str 
puts password
puts ""	
end
#puts "Enter a three letter password"
#password = gets.chomp

#Decrypt method
#Get password from user
#find index of each letter and decrement index by one
#Append new letter into new variable 



def decrypt (password)
alphabet = "abcdefghijklmnopqrstuvwxyz"
str = ""
index = 0

while index < password.length 
	letter = password[index]
	a = alphabet.index(letter)

	if a == 0
		str += alphabet[25]
	else
	    str += alphabet[a - 1]
	end 
	index += 1
end
password = str 
puts password
puts ""	
end 
#puts "Enter a three letter password"
#password = gets.chomp
#decrypt(password)

password = "abc"
encrypt(password)
password = "zed"
encrypt(password)
password = "bcd"
decrypt(password)
password = "afe"
decrypt(password)
password = "swordfish"
decrypt(encrypt(password))




