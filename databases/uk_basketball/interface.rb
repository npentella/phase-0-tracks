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
		won_game BOOLEAN
	)
SQL

db.execute(create_roster_table)
db.execute(create_coaches_table)
db.execute(create_games_table)
# Ask user for data to populate player and coach tables
def add_player(db, name, number, position)
	db.execute("INSERT INTO roster (name, num, position, points_scored, games_played) VALUES (?, ?, ?, 0, 0)", [name, number, position])
end

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

def add_coach(db, name, games_won = 0, games_coached = 0)
	db.execute("INSERT INTO coaches (name, games_won, games_coached) VALUES (?, ?, ?)", [name, games_won, games_coached])
end

name = ""
until name == "done"
	puts "Please enter the name of the coach you'd like to add to the staff.  When finished, type 'done'"
	name = gets.chomp
	break if name == "done"
	add_coach(db, name)
end

# Give option to add info on games played, which will update games table