#Asks and stores name
puts "What is your name?"
name = gets.chomp

#Asks age and year of birth?
puts "How old are you?"
stated_age = gets.chomp
stated_age = stated_age.to_i

puts "what year were you born?"
year_of_birth = gets.chomp
year_of_birth = year_of_birth.to_i

#Offers garlic bread
wants_garlic = nil
until wants_garlic != nil
	puts "Would you like a piece of our famously delicious garlic bread?(y/n)"
	garlic_input = gets.chomp
	if garlic_input == "y"
		wants_garlic = true
	elsif garlic_input == "n"
		wants_garlic = false
	else puts "Please respond with y/n"
	end
end

#Offers health insurance
wants_insurance = nil
until wants_insurance != nil
	puts "Would you like to enroll in company health insurance? (y/n)"
	insurance_input = gets.chomp
	if insurance_input == "y"
		wants_insurance = true
	elsif insurance_input == "n"
		wants_insurance = false
	else puts "Please respond with y/n"
	end
end














