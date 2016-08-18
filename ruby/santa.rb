class Santa
	attr_reader :reindeer_ranking

	attr_accessor :gender, :age, :ethnicity

	def initialize(gender, ethnicity)
		puts "Initializing Santa Instance..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def print_info
		puts "This Santa is #{@ethnicity} & #{@gender}"
	end

	def celebrate_birthday
		puts "Happy Birthday, Santa!"
		@age += 1
	end

	def get_mad_at(reindeer)
		@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(reindeer)))
	end
end

#Build Many Santas

santa_num = 0

example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

while santa_num < 100
	santa = Santa.new(example_genders.sample, example_ethnicities.sample)
	santa.age = rand(140)
	puts "EXAMPLE SANTA #{santa_num + 1}"
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Age: #{santa.age}"
	puts "This Santa's favorite reindeer are:"
	santa.reindeer_ranking.each do |reindeer|
		puts "#{santa.reindeer_ranking.index(reindeer) + 1}: #{reindeer}"	
	end
	santa_num += 1
end

#THIS WORKS, BUT COMMENTIG IT OUT FOR EASIER DRIVER CODE 
# santas << Santa.new("female", "african-american")
# santas << Santa.new("male", "Korean")
# santas << Santa.new("fluid gender", "Caucasian")
# 
# p santas
# 
# santas.each do |santa|
# 	santa.print_info
# 	santa.eat_milk_and_cookies("Sugar Cookie")
# 	santa.speak
# 	santa.get_mad_at("Dancer")
# 	p santa.reindeer_ranking
# end

santa = Santa.new("male", "Caucasian")
santa.speak
santa.eat_milk_and_cookies("Samoa")
p santa.age
santa.celebrate_birthday
p santa.age
p santa.reindeer_ranking
santa.get_mad_at("Dancer")
p santa.reindeer_ranking
p santa.gender
santa.gender = "bigender"
p santa.gender
