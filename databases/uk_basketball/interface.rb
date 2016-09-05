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
		games_played INTEGER,
		active BOOLEAN
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

# Give option to add info on games played, which will update games table