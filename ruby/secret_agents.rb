#ENCRYPT METHOD
def encrypt(password)
		
	#Start index variable at 0
	index = 0
	#While index is less than word length, 
	#advance corresponding letter one character, except `space`
	while index < password.length
		if password[index] != " "
			password[index] = password[index].next!
		end
		index += 1
	end
	puts password
end

encrypt("not hungry")