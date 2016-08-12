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

olympic_sports = ["basketball", "swimming", "rowing", "soccer"]

medal_count = {USA: 32, China: 22, Japan: 12}

olympic_sports.each do |sport|
	puts "#{sport} is an olympic sport."
end

medal_count.each do |country, medals|
	puts "#{country} has #{medals} medals"
end

olympic_sports.map! do |sport|
	puts "#{sport.upcase} is BIG now!"
	sport.upcase
end

p olympic_sports

p medal_count