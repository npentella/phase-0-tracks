# -- KENTUCKY BASKETBALL PLAYERS --

# CHARACTERISTICS
# Name - varies
# Height - varies
# Position - varies
# Years in School
# Accolades
# Points per game
# Won championship?
# Coach - defaults to john calipari

# BEHAVIOR
# Hit the three
# Slam dunk
# Beat Louisville
# Win title
# Get Drafted
# Commit to Kentucky

class Ky_bball_player
	attr_reader :coach, :ppg

	attr_accessor :name, :height, :position, :years_in_school, :accolades, :points_scored, :games_played, :won_championship, :active

	def initialize(name, height, position)
		puts "Initializing new UK player..."
		@name = name
		@height = height
		@position = position
		@years_in_school = 1
		@accolades = []
		@points_scored = 0
		@games_played = 0
		@won_championship = false
		@active = true
		@coach = "John Calipari"
	end

	def hit_three(num)
		puts "swish!" * num
		3 * num
	end

	def dunk(num)
		puts "slam!" * num
		2 * num
	end

	def play_game
		puts "Cats Win!"
		1
	end

	def win_poy
		puts "#{@name} has been named player of the year!"
		@accolades << "Player of the Year"
	end

	def get_drafted(team)
		puts "#{@name} has been drafted by the #{team}!"
		@accolades << "Drafted by #{team}"
		false
	end

	def win_title
		puts "#{@name} and the Wildcats have won the title!"
		true
	end
end

#DRIVER CODE

karl_towns = Ky_bball_player.new("Karl-Anthony Towns", 84, "C")

puts "#{karl_towns.name} is #{karl_towns.height} inches tall."
puts "He plays the #{karl_towns.position} postion and is in year #{karl_towns.years_in_school} at UK."
puts "He is coached by #{karl_towns.coach}"
if karl_towns.won_championship
	puts "#{karl_towns.name} led the Cats to the title!"
else puts "#{karl_towns.name} could not lead the Cats to the title :("
end
if karl_towns.active
	puts "#{karl_towns.name} is still an active player."
else puts "#{karl_towns.name} is no longer an active player."
end
puts "Here is a list of #{karl_towns.name}'s accolades:"
karl_towns.accolades.each do |accolade|
	puts accolade
end

karl_towns.points_scored += karl_towns.hit_three(2)
karl_towns.points_scored += karl_towns.dunk(10)
karl_towns.games_played += karl_towns.play_game
karl_towns.win_poy
karl_towns.won_championship = karl_towns.win_title
karl_towns.active = karl_towns.get_drafted("Timberwolves")

puts "#{karl_towns.name} is #{karl_towns.height} inches tall."
puts "He plays the #{karl_towns.position} postion and is in year #{karl_towns.years_in_school} at UK."
puts "He is averaging #{karl_towns.points_scored / karl_towns.games_played} points per game."
puts "He is coached by #{karl_towns.coach}"
if karl_towns.won_championship
	puts "#{karl_towns.name} led the Cats to the title!"
else puts "#{karl_towns.name} could not lead the Cats to the title :("
end
if karl_towns.active
	puts "#{karl_towns.name} is still an active player."
else puts "#{karl_towns.name} is no longer an active player."
end
puts "Here is a list of #{karl_towns.name}'s accolades:"
karl_towns.accolades.each do |accolade|
	puts accolade
end






















