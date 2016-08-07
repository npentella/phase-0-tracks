#ENCRYPT METHOD
def encrypt(password)
		
	#Start index variable at 0
	
	#While index is less than word length, 
	#advance corresponding letter one character, except `space`
	
	alphabet = "abcdefghijklmnopqrstuvwxyz"

	index = 0

	while index < password.length
		if password[index] == "z"
			password[index] = "a"
		elsif password[index] != " "
			password[index] = password[index].next
		end
		index += 1
	end
	puts password
end

encrypt("not hungry")

#DECRYPT METHOD

def decrypt(encrypted_password)

	alphabet = "abcdefghijklmnopqrstuvwxyz"

	index = 0

	while index < encrypted_password.length
		if encrypted_password[index] != " "
			encrypted_password[index] = alphabet[alphabet.index(encrypted_password[index]) - 1]
		end
		index += 1
	end
	puts encrypted_password
end

decrypt("opu ivohsz")

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")