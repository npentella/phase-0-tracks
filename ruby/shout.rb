module Shout
  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yell_happily(words)
  	"OMG!" + words + "!!! :)"
  end
end

# DRIVER CODE #

puts Shout.yell_angrily("Eeeeek")
puts Shout.yell_happily("Oooooh")