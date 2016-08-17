class Santa

	def speak
		puts "Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end

	def initialize
		puts "Initializing Santa Instance..."
	end
end

saint_nick = Santa.new

saint_nick.speak
saint_nick.eat_milk_and_cookies("Sugar Cookie")
