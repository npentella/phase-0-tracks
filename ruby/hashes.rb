#Client Questionairre

#Create empty hash

client_prefs = {}

#Ask for client name, store in hash

puts "what is the client's full name?"
client_prefs[:name] = gets.chomp

#Client age

puts "How old is the client (years)?"
client_prefs[:age] = gets.chomp
client_prefs[:age] = client_prefs[:age].to_i

#Number of children

#Decor theme

#favorite color

#Print hash
p client_prefs