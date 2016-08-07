#ENCRYPT METHOD
def encrypt(password)
		
	#Start index variable at 0
	
	#While index is less than word length, 
	#advance corresponding letter one character, except `space`

	index = 0

	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		elsif password[index] != " "
			password[index] = password[index].next
		end
		index += 1
	end
	return password
end

#puts encrypt("not hungry")

#DECRYPT METHOD

def decrypt(password)

	alphabet = "abcdefghijklmnopqrstuvwxyz"

	index = 0

	while index < password.length
		if password[index] != " "
			password[index] = alphabet[alphabet.index(password[index]) - 1]
		end
		index += 1
	end
	return password
end

# puts decrypt("opu ivohsz")

#puts encrypt("abc")
#puts encrypt("zed")
#puts decrypt("bcd")
#puts decrypt("afe")

#puts decrypt(encrypt("swordfish"))

#This initially gave us an error.  After some research, we learned
# that using `puts` instead of `return` was not returning an actual
# value for the decrypt method to use.

#INTERFACE

#Asks user wether they want to encrypt or decrypt password

#Asks for password

#If user selected encrypt, call encrypt method; and vice versa
type_input = nil

until (type_input == "encrypt") || (type_input == "decrypt")
	puts "Would you like to encrypt or decrypt?"
	type_input = gets.chomp
	if (type_input != "encrypt") && (type_input != "decrypt")
		puts "Please be a better secret agent and type encrypt or decrypt!"
	end
end

puts "Enter password:"

user_password = gets.chomp

if type_input == "encrypt"
	puts encrypt(user_password)
	elsif type_input == "decrypt"
		puts decrypt(user_password)
end
		

















