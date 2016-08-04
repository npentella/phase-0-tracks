puts "what is your hamsters name?"
hamsters = gets.chomp

volume = 0
until volume.between?(1,10)
	puts "What is #{hamsters}'s volume level?"
	volume = gets.chomp
	volume = volume.to_i
	if volume.between?(1,10)
	else puts "please enter a number between 1 and 10"
	end	
end

puts "what is #{hamsters}'s fur color?"
fur = gets.chomp
adoptable = nil
until adoptable != nil
puts "is #{hamsters} a good a candidate for adoption?"
adoption_input = gets.chomp
if adoption_input == "yes"
adoptable = true
elsif adoption_input =="no"
adoptable= false
else
puts "please input yes or no.... thanks :_)"
end
end
puts "what is #{hamsters}'s estimated age?"
age = gets.chomp
if age == ""
	age = nil
else age = age.to_i
end

puts "Your hamster's name is #{hamsters}."
if volume > 5
	puts "#{hamsters} is loud"
else puts "#{hamsters} is quiet"
end

puts "#{hamsters}'s fur is #{fur}"

if adoptable
	puts "#{hamsters} is a good candidate for adoption"
else puts "You have to keep #{hamsters}"
end

if age != nil
	puts "#{hamsters} is #{age} years old"
end




