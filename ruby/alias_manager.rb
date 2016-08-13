# Ask for spy's real name.

puts "Hello, Agent." 
puts "What is your real name, first and last?  We will generate a coded alias."
name_input = gets.chomp

# CREATE FAKE NAME

#Create arrays of uppercase and lowercase consonants and vowels

big_vowels = "AEIOU".chars
little_vowels = "aeiou".chars
big_consonants = "BCDFGHJKLMNPQRSTVXYZ"
little_consonants = "bcdfghjklmnpqrstvxyz"

# Swap first and last name

code_name = name_input.split(" ").reverse.join(" ")

p code_name

# Change all vowels to next vowel (aeiou)
# Change all consonants to the next consonant in the alphabet

