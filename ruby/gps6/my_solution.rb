# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Allows you to link another file using a relative path

require_relative 'state_data'

class VirusPredictor
  # Set state data at initiailization
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls predicted death and spread methods using variables from initialization
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # predicts deaths based on density of pop
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # predicts speed of spread in months based on density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |state, state_data|
  p state
  viruspredictor = VirusPredictor.new(state,state_data[:population_density],state_data[:population])
  viruspredictor.virus_effects
  puts "-"*10
end


#=======================================================================
# Reflection Section

# The constant/parent hash uses the rocket operator to assign values (the child hashes) to keys, which are strings.  The child hashed use symbols as keys to assign values without the rocket operator.

# 'require_relative' links another file of code, much like it were copy and pasted into the file.  Adding '_relative' allows you to use a relative path.

# To iterate through a hash, you could use '.each', '.map', or '/map!', among other options.

# The scope of the variable stood out to me most when refactoring.  Since the variables were instance variables, they did not need to be fed into the method as parameters.

# Variable scope was the concept most solidifed for me by this challenge.