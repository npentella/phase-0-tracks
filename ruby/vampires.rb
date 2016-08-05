puts "How many employees are you processing?"
employee_count = gets.chomp
employee_count = employee_count.to_i

survey_number = 0

while survey_number < employee_count
	survey_number += 1

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

	puts "Please enter any allergies, one at a time. When finished, enter done"
	allergy = nil
	until (allergy == "done") || (allergy == "sunshine")
		puts "Enter Allergy.  If finished, type done"
		allergy = gets.chomp
	end
	
	# Correct Age Detector
	
	current_year = Time.new.year
	calculated_age = current_year - year_of_birth
	if (calculated_age - stated_age).abs > 1
		gave_correct_age = false
	else gave_correct_age = true
	end
	
	#Vampire Detection
	
	vampire_results = nil
	
	if allergy == "sunshine"
		vampire_results = "Probably a vampire"
	elsif (name == "Drake Cula") || (name == "Tu Fang")
		vampire_results = "Definitely a vampire"
	elsif gave_correct_age && (wants_garlic || wants_insurance)
		vampire_results = "Probably not a vampire"
	elsif !gave_correct_age && (!wants_garlic || !wants_insurance)
		vampire_results = "Probably a vampire"
	elsif (!gave_correct_age && !wants_garlic) && !wants_insurance
		vampire_results = "Almost certainly a vampire"
	else vampire_results = "Results inconclusive"
	end	
	
	puts vampire_results

end

















