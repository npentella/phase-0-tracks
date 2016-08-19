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
	attr_reader :coach

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

# USER INTERFACE

# CREATE AS MANY INSTANCES AS THEY LIKE
# PROMPT USER FOR EACH ATTRIBUTE
# STORE ALL INSTANCES IN ARRAY
# PRINT ATTRIBUTES OF EACH INSTANCE AS CONFIRMATION

roster = []

player_name = ""

until player_name == "quit"
	puts "Welcome to the Wildcat Player Creator!"
	puts "Please enter the player's name.  When finished, type 'quit'."
	player_name = gets.chomp
	break if player_name == "quit"
	puts "How tall is the player? (in inches)"
	player_height = gets.chomp.to_i
	puts "What position does the player play?"
	player_position = gets.chomp
	player = Ky_bball_player.new(player_name, player_height, player_position)
	puts "How many years has the player been in school?"
	player.years_in_school = gets.chomp.to_i
	puts "How many points have they scored in their career?"
	player.points_scored = gets.chomp.to_i
	puts "How many games have the played in their career?"
	player.games_played = gets.chomp

	championship_response = ""
	until (championship_response == "yes") || (championship_response == "no")
		puts "has the player won a championship?"
		championship_response = gets.chomp
		if championship_response == "yes"
			player.won_championship = true
		elsif championship_response == "no"
			player.won_championship = false
		else puts "Please respond with 'yes' or 'no'"
		end
	end

	accolade_response = ""
	until (accolade_response == "yes") || (accolade_response == "no")
		puts "Do you have any accolades to add for the player? (yes or no)"
		accolade_response = gets.chomp
		if accolade_response == "yes"
			accolade = ""
			until accolade == "done"
				puts "Please enter the next accolade.  If finished, type 'done'"
				accolade = gets.chomp
				break if accolade == "done"
				player.accolades << accolade
			end
		elsif accolade_response == "no"
			puts "Accolades completed."
		else puts "please respond with 'yes' or 'no'"
		end
		break if accolade == "done"
	end

	active_response = ""
	until (active_response == "yes") || (active_response == "no")
		puts "Is the player currently active? (yes or no)"
		active_response = gets.chomp
		if active_response == "yes"
			player.active = true
		elsif active_response == "no"
			player.active = false
		else puts "Please repsond with yes or no"
		end
	end

	roster << player
end

roster.each do |player|
	puts "-"*10
	puts "#{player.name} is #{player.height} inches tall."
	puts "He plays the #{player.position} postion and is in year #{player.years_in_school} at UK."
	puts "He has scored #{player.points_scored} points in #{player.games_played} games."
	puts "He is coached by #{player.coach}"
	if player.won_championship
		puts "#{player.name} led the Cats to the title!"
	else puts "#{player.name} could not lead the Cats to the title :("
	end
	if player.active
		puts "#{player.name} is still an active player."
	else puts "#{player.name} is no longer an active player."
	end
	puts "Here is a list of #{player.name}'s accolades:"
	player.accolades.each do |accolade|
		puts accolade
	end
	puts "-"*10
end



# DRIVER CODE

# karl_towns = Ky_bball_player.new("Karl-Anthony Towns", 84, "C")
# 
# puts "#{karl_towns.name} is #{karl_towns.height} inches tall."
# puts "He plays the #{karl_towns.position} postion and is in year #{karl_towns.years_in_school} at UK."
# puts "He is coached by #{karl_towns.coach}"
# if karl_towns.won_championship
# 	puts "#{karl_towns.name} led the Cats to the title!"
# else puts "#{karl_towns.name} could not lead the Cats to the title :("
# end
# if karl_towns.active
# 	puts "#{karl_towns.name} is still an active player."
# else puts "#{karl_towns.name} is no longer an active player."
# end
# puts "Here is a list of #{karl_towns.name}'s accolades:"
# karl_towns.accolades.each do |accolade|
# 	puts accolade
# end
# 
# karl_towns.points_scored += karl_towns.hit_three(2)
# karl_towns.points_scored += karl_towns.dunk(10)
# karl_towns.games_played += karl_towns.play_game
# karl_towns.win_poy
# karl_towns.won_championship = karl_towns.win_title
# karl_towns.active = karl_towns.get_drafted("Timberwolves")
# 
# puts "#{karl_towns.name} is #{karl_towns.height} inches tall."
# puts "He plays the #{karl_towns.position} postion and is in year #{karl_towns.years_in_school} at UK."
# puts "He is averaging #{karl_towns.points_scored / karl_towns.games_played} points per game."
# puts "He is coached by #{karl_towns.coach}"
# if karl_towns.won_championship
# 	puts "#{karl_towns.name} led the Cats to the title!"
# else puts "#{karl_towns.name} could not lead the Cats to the title :("
# end
# if karl_towns.active
# 	puts "#{karl_towns.name} is still an active player."
# else puts "#{karl_towns.name} is no longer an active player."
# end
# puts "Here is a list of #{karl_towns.name}'s accolades:"
# karl_towns.accolades.each do |accolade|
# 	puts accolade
# end
