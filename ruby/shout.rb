# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
# 
#   def self.yell_happily(words)
#   	"OMG!" + words + "!!! :)"
#   end
# end

module Shout
	def yell_angrily(words)
  		words + "!!!" + " :("
	end
	def yell_happily(words)
		"OMG!" + words + "!!! :)"
	end	
end

class Coder
	include Shout
end

class Coach
	include Shout
end

# DRIVER CODE #

coder = Coder.new
puts coder.yell_angrily("Darn")

coach = Coach.new
puts coach.yell_happily("We Win")









