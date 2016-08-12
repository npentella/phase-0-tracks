# def pokedex
# 
# 	puts "Pokedex GO!"
# 
# 	pokemon = ["Pikachu", "Charzard", "Squirtle"]
# 	
# 	yield(pokemon)
# 
# 	puts "Pokedex Not GO!"
# 
# end
# 
# pokedex{ |poke1, poke2, poke3| puts "#{poke1} GO!! #{poke2} GO!! #{poke3} GO!!"}

# olympic_sports = ["basketball", "swimming", "rowing", "soccer"]
# 
# medal_count = {USA: 32, China: 22, Japan: 12}
# 
# olympic_sports.each do |sport|
# 	puts "#{sport} is an olympic sport."
# end
# 
# medal_count.each do |country, medals|
# 	puts "#{country} has #{medals} medals"
# end
# 
# olympic_sports.map! do |sport|
# 	puts "#{sport.upcase} is BIG now!"
# 	sport.upcase
# end
# 
# p olympic_sports
# 
# p medal_count# 


####### ARRAYS ###############

numbers = [1, 2, 5, 9]

numbers.delete_if { |x| x > 2 }

p numbers

###############################

numbers = [1, 2, 5, 9]

p numbers.select { |x| x < 9 }

p numbers

###############################

numbers = [1, 2, 5, 9]

numbers.reject! { |x| x < 5 }

p numbers

###############################

numbers = [1, 2, 5, 9]

p numbers.drop_while { |x| x < 2 }

p numbers


###########HASHES###############

medal_count = {USA: 32, China: 22, Japan: 12}

medal_count.delete_if { |country, medals| medals < 15 }

p medal_count

################################

medal_count = {USA: 32, China: 22, Japan: 12}

p medal_count.select { |country, medals| medals > 30 }

p medal_count

################################

medal_count.reject! { |country, medals| medals < 20 }

p medal_count

################################

medal_count = {USA: 32, China: 22, Japan: 12}

medal_count.each do |country, medals|
	if medals < 15
	 	medal_count.delete(country)
	end
end

p medal_count






