# This program will alow the user to enter a roster of basketball players and keep stats up to date throughout the year.

# require gem
require 'sqlite3'

# Create database
db = SQLite3::Database.new("basketball.db")

# Create tables for players, coaches, games played
create_roster_table = <<-SQL
	CREATE TABLE IF NOT EXISTS roster (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		num INTEGER,
		position VARCHAR(255),
		points_scored INTEGER,
		games_played INTEGER
	)
SQL

create_coaches_table = <<-SQL
	CREATE TABLE IF NOT EXISTS coaches (
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		games_won INTEGER,
		games_coached INTEGER
	)
SQL

create_games_table = <<-SQL
	CREATE TABLE IF NOT EXISTS games (
		id INTEGER PRIMARY KEY,
		opponent VARCHAR(255),
		ky_points INTEGER,
		opponent_points INTEGER
	)
SQL

db.execute(create_roster_table)
db.execute(create_coaches_table)
db.execute(create_games_table)

# Methods to add players, coaches, games to tables

def add_player(db, name, number, position)
	db.execute("INSERT INTO roster (name, num, position, points_scored, games_played) VALUES (?, ?, ?, 0, 0)", [name, number, position])
end

def add_coach(db, name, games_won = 0, games_coached = 0)
	db.execute("INSERT INTO coaches (name, games_won, games_coached) VALUES (?, ?, ?)", [name, games_won, games_coached])
end

def log_game (db, opponent, ky_points, opponent_points)
	db.execute("INSERT INTO games (opponent, ky_points, opponent_points) VALUES (?, ?, ?)", [opponent, ky_points, opponent_points])	
end

# Ask user for data to populate player and coach tables

name = ""
until name == "done"
	puts "Please enter the name of the player you'd like to add to the roster.  When finished, type 'done'"
	name = gets.chomp
	break if name == "done"
	puts "What is the player's number?"
	number = gets.chomp.to_i
	puts "What position do they play?"
	position = gets.chomp
	add_player(db, name, number, position)
end

name = ""
until name == "done"
	puts "Please enter the name of the coach you'd like to add to the staff.  When finished, type 'done'"
	name = gets.chomp
	break if name == "done"
	add_coach(db, name)
end
# Give option to add info on games played, which will update games table and info in related tables

opponent = ""
until opponent == "done"
	puts "To log a game, please ener the name of the opponent.  When finished, enter 'done'"
	opponent = gets.chomp
	break if opponent == "done"
	puts "How many points did Kentucky score?"
	ky_points = gets.chomp
	puts "How many points did #{opponent} score?"
	opponent_points = gets.chomp
	log_game(db, opponent, ky_points, opponent_points)
	players = db.execute("SELECT * FROM roster")
	players.each_index do |i|
		name = players[i][1]
		puts "How many points did #{name} score?"
		points_scored = gets.chomp.to_i
		new_total_points = points_scored + players[i][4]
		new_total_games = players[i][5] + 1
		db.execute("UPDATE roster SET points_scored=#{new_total_points},games_played=#{new_total_games} WHERE id=#{i}+1")
	end
	coaches = db.execute("SELECT * FROM coaches")
	coaches.each_index do |i|
		new_total_games = coaches[i][3] + 1
		if ky_points > opponent_points
			new_total_wins = coaches[i][2] + 1
		else new_total_wins = coaches[i][2]
		end
		db.execute("UPDATE coaches SET games_coached=#{new_total_games}, games_won=#{new_total_wins} WHERE id=#{i}+1")
	end
end

# Give option to add info on games played, which will update games table