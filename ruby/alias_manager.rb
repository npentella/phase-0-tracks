# Ask for spy's real name.

puts "Hello, Agent." 
puts "What is your real name, first and last?  We will generate a coded alias."
name_input = gets.chomp

# CREATE FAKE NAME

#Create arrays of uppercase and lowercase consonants and vowels

big_vowels = "AEIOU".chars
little_vowels = "aeiou".chars
big_consonants = "BCDFGHJKLMNPQRSTVWXYZ".chars
little_consonants = "bcdfghjklmnpqrstvwxyz".chars

# Swap first and last name

code_name = name_input.split(" ").reverse.join(" ")

# p code_name

# Change all vowels to next vowel (aeiou)
# Change all consonants to the next consonant in the alphabet

code_chars = code_name.chars

# p code_chars

code_chars.map! do |c|
	if big_vowels.include?(c)
		if big_vowels.index(c) < 4
			c = big_vowels[big_vowels.index(c) + 1]
		else c = big_vowels[0]
		end
	elsif little_vowels.include?(c)
		if little_vowels.index(c) < 4
			c = little_vowels[little_vowels.index(c) + 1]
		else c = little_vowels[0]
		end
	elsif big_consonants.include?(c)
		if big_consonants.index(c) < 20
			c = big_consonants[big_consonants.index(c) + 1]
		else c = big_consonants[0]
		end
	elsif little_consonants.include?(c)
		if little_consonants.index(c) < 20
			c = little_consonants[little_consonants.index(c) + 1]
		else c = little_consonants[0]
		end
	else c = c
	end
end

puts code_chars.join



























