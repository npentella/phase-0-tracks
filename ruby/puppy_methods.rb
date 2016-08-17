class Puppy
	def fetch(toy)
		puts "I brought back the #{toy}!"
	end

	def speak(num)
		puts 'woof' * num
	end

	def roll_over
		puts "*roll over*"
	end

	def dog_years(age)
		puts age * 7
	end

	def play_dead(length)
		puts "plays dead for #{length} seconds."
	end

	def initialize
		puts "Initializing new puppy instance..."
	end
end

class Pokemon
	def initialize
		"Adding pokemon to Pokedex..."
	end
end

spot = Puppy.new 
spot.fetch('bone')
spot.speak(3)
spot.roll_over
spot.dog_years(14)
spot.play_dead(60)