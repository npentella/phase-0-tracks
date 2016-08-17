class Puppy

 def fetch(toy)
   puts "I brought back the #{toy}!"
   toy
 end

 def speak(num)
     puts 'woof' * num 
 end

 def rollover
     puts "*roll over*"
 end

 def dog_years(age)
     puts age * 7
 end

 def play_dead(length)
     puts "plays dead for #{length} per seconds."
 end

end

spot = Puppy.new 
spot.fetch('bone')
spot.speak(3)
spot.rollover
spot.dog_years(14)
spot.play_dead(60)