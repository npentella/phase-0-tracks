# class Puppy
# 	def fetch(toy)
# 		puts "I brought back the #{toy}!"
# 	end
# 
# 	def speak(num)
# 		puts 'woof' * num
# 	end
# 
# 	def roll_over
# 		puts "*roll over*"
# 	end
# 
# 	def dog_years(age)
# 		puts age * 7
# 	end
# 
# 	def play_dead(length)
# 		puts "plays dead for #{length} seconds."
# 	end
# 
# 	def initialize
# 		puts "Initializing new puppy instance..."
# 	end
# end

class Pokemon
	def initialize
		puts "Adding Pokemon to Pokedex..."
	end

	def poke_battle(opponent)
		puts "Go battle #{opponent}!"
	end

	def discover(pokemon)
		puts "You found a wild #{pokemon}"
	end
end

geodude = Pokemon.new
geodude.poke_battle("Squirtle")
geodude.discover("Onyx")

instance = 0
pokedex = []

while instance < 50
	pokemon = Pokemon.new
	pokedex << pokemon
	instance += 1
end

pokedex.each do |pokemon|
	puts "#{pokemon} number #{pokedex.index(pokemon) + 1}"
	pokemon.poke_battle("Squirtle")
	pokemon.discover("Geodude")
end

# spot = Puppy.new 
# spot.fetch('bone')
# spot.speak(3)
# spot.roll_over
# spot.dog_years(14)
# spot.play_dead(60)# 