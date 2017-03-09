# Virus Predictor
# I worked on this challenge [by myself, with: Tim Parkyn ].
# We spent 1 hour and 45 minutes on this challenge.
# EXPLANATION OF require_relative
# Require_relative uses the stated file to access classes, methods, and data. 
# Accessing the relative file allows you to access the code without having to have a very long single file.
## Release 1
## Use require_relative for files that you authored or other local files. Use require for outside files.
require_relative 'state_data'
class VirusPredictor
  # sets instance variables, creates instance of a class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs other methods, returns predicted_deaths and speed_of_spread
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  #private restricts access to the predicted_deaths method
  private
  # calculates deaths based on pop density, "rounds" to an integer, then puts the estimate to the screen
  def predicted_deaths
    # predicted deaths is solely based on population density
    death_multiplier = {0 => 0.05, 50 => 0.1, 100 => 0.2, 150 => 0.3, 200 => 0.4}
    death_multiplier.each do |density, multiplier|
      if @population_density >= density
          @number_of_deaths = (@population * multiplier).floor
      end
    
    end
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end
    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"
  end
  # estimates speed of spread based on density, puts it to the screen
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    spread = {0 => 2.5, 50 => 2, 100 => 1.5, 150 => 1, 200 => 0.5}
    speed = 0.0
    spread.each do |density, factor|
      if @population_density >= density
          speed += factor
      end
    
    end
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population]) 
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end
#=======================================================================
# Reflection Section