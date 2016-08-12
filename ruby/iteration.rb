def pokedex

	puts "Pokedex GO!"

	pokemon = ["Pikachu", "Charzard", "Squirtle"]
	
	yield(pokemon)

	puts "Pokedex Not GO!"

end

pokedex{ |poke1, poke2, poke3| puts "#{poke1} GO!! #{poke2} GO!! #{poke3} GO!!"}