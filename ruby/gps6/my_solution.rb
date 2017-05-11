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
 
   def predicted_deaths
    # predicted deaths is solely based on population density
  case @population_density
    when 0...50 then  number_of_deaths = calc_density(0.05)
    when 50...100 then  number_of_deaths = calc_density(0.1)
    when 100...150 then  number_of_deaths = calc_density(0.2)
    when 150...200 then  number_of_deaths = calc_density(0.3)
    else   number_of_deaths = calc_density(0.4)
  end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Separated the calculation into its own method
  def calc_density(percent)
    (@population * percent).floor

  end

   # speed_of_spread evaluates population density to find the number of monthes for 
   # outbreak to spread and assigns the number to the speed variable. This is then printed out
   # to complete the statements.
   def speed_of_spread(predicted_deaths)
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    # I neatened this up, but didn't make another method since it doesn't calculate. 
    case @population_density 

      when 0...50 then speed += 2.5
      when 50...100 then speed += 2.0
      when 100...150 then speed += 1.5
      when 150...200 then speed += 1.0
      else speed += 0.5
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