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

#Print hash
p client_prefs