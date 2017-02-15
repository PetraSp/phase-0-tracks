# Virus Predictor

# I worked on this challenge by myself.
# I spent 1,5 hours on this challenge.

# EXPLANATION OF require_relative
#It's basically copying and pasting the class code into the top of the file. When we work on our own projects we're more likely to use require_relative. We use require for external dependencies.
#
require_relative 'state_data'

class VirusPredictor
# initializes VirusPredictor instance with state, population, and density instance variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# returns predicted deaths and speed of spread results
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# runs a conditional calculation based on the state population, must draw state information from state_data.rb
  def predicted_deaths
    # predicted deaths is solely based on population density
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
    densities = {0 => 0.05, 50 => 0.1, 100 =>0.2, 150 => 0.3, 200 => 0.4}
    densities.each do |density,ratio|
      if @population_density >= density
         @number_of_deaths = (@population * ratio).floor
      end 
    end 

    print "#{@state} will lose #{@number_of_deaths} people in this outbreak"

  end


# evaluates speed of spread based on population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

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

    spread_rates = {0 => 2.5, 50 => 2, 100 => 1.5, 150 => 1, 200 => 0.5}

    spread_rates.each do |density, rate|
      if @population_density>= density
        speed = rate
      end 
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

 STATE_DATA.each do |state, data|
  state = VirusPredictor.new(state, data[:population_density], data[:population])
  state.virus_effects
end 


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The outer hash is accessible by strings, the inner hash by symbols.
# What does require_relative do? How is it different from require? see above
# What are some ways to iterate through a hash? 'each' and 'map'
# When refactoring virus_effects, what stood out to you about the variables, if anything? predicted_deaths and speed_of_spread were passed unnecessary parameters.
# What concept did you most solidify in this challenge? I understood what is the difference between require_relative and require. And learnt about Ruby Constants.