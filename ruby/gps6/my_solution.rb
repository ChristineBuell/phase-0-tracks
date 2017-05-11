# Virus Predictor

# I worked on this challenge [by myself, with: Anna].
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
# Adding require_relative gives tells the file it's in to look for that file and link it. It will look in the current directory
# if no other filepath is given.
require_relative 'state_data'

class VirusPredictor
  # initialize is initializing instance variables used for data in state_data
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
    # The function virus_effects calls two methods. Each one calculates and prints
    # a part of the total virus effects by state statment.
  def virus_effects
    speed_of_spread(predicted_deaths()) 

  end
  # predicted_deaths and speed_of_spread are private methods. They can't be accessed with the 
  # dot operator, they can only be accessed from inside the class. The instance of VirusPredictor calls virus_effects
  # which calls the two private methods. Any methods after private are private, unless public or protected is declared.
  private
    # predicted_deaths logic evaluates the population_density number to 
    # choose a percentage to multiply population with which is rounded down with .floor.
    # The first half of the total statement is printed out.  
 
   def predicted_deaths()
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
   # speed_of_spread evaluates population density to find the number of monthes for 
   # outbreak to spread and assigns the number to the speed variable. This is then printed out
   # to complete the statementx.
   def speed_of_spread(predicted_deaths)
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 states = []
 index = 0
STATE_DATA.each do |state, pop|
states[index] = VirusPredictor.new(state, pop[:population_density],pop[:population])
print states[index].virus_effects
index += 1
end


=begin

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
=end

#=======================================================================
# Reflection Section