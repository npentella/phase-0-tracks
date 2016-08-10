#Client Questionairre

#Create empty hash

client_prefs = {}

#Ask for client name, store in hash

puts "What is the client's full name?"
client_prefs[:name] = gets.chomp

#Client age

puts "How old is the client (years)?"
client_prefs[:age] = gets.chomp
client_prefs[:age] = client_prefs[:age].to_i

#Number of children

puts "How many children does the client have?"
client_prefs[:children] = gets.chomp
client_prefs[:children] = client_prefs[:children].to_i

#Decor theme

puts "What is the client's preferred decor theme?"
client_prefs[:theme] = gets.chomp

#favorite color

puts "What is the client's favorite color?"
client_prefs[:color] = gets.chomp

#CHECK FOR ACCURACY

#Print results as string

#Ask designer if accurate
accurate_data = nil
until accurate_data == true
	puts "please review the following information for accuracy:"
	client_prefs.each{|key, value| puts "#{key} : #{value}"}
	puts "Is all this information accurate? (y/n)"
	accuracy_input = gets.chomp
	if accuracy_input == "y"
		puts "thanks for verifying"
		accurate_data = true
	elsif accuracy_input == "n"
		accurate_data = false
		puts "which field needs updated?"
		needs_update = gets.chomp
		puts "what is the correct value for #{needs_update}?"
		client_prefs[needs_update.to_sym] = gets.chomp
		else puts "please respond with y or n"
	end
end


	#If no, end.  If yes, ask which fields

	#update those fields


#Print hash
p client_prefs