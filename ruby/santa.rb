class Santa
  attr_reader :age, :ethnicity
  attr_accessor :gender
  

  def initialize (gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = rand(140)
  # puts "Initializing Santa instance ..."
  end 

  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end 

  def eat_milk_and_cookies (cookie)
    puts  "That was a good #{cookie}!"
  end  

  def celebrate_birthday
    @age += 1
    puts "Santa just turned #{@age}"
  end

  def get_mad_at (reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
    puts "#{reindeer_name} you know what you did!"
  end 
end

# Driver code
# s = Santa.new("female", "Czech")
# s.speak
# s.eat_milk_and_cookies("snickerdoodle")
# s.celebrate_birthday
# s.get_mad_at("Dancer")
# puts "Santa just turned #{s.age}."
# puts "Santa is of #{s.ethnicity} origin."
# puts s.gender = "Prefers not to say."

# santas = []
# example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
# example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
# example_genders.length.times do |i|
# santas << Santa.new(example_genders[i], example_ethnicities[i])
# puts "The new santa is #{example_genders[i]} and #{example_ethnicities[i]}."
# end
# p santas


santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
50.times do |n|
  santas << Santa.new(genders.sample, ethnicities.sample)

puts "\n" 
puts "The new santa is #{santas[n].age} years old, is #{santas[n].gender}, and #{santas[n].ethnicity}."
end


=begin
# Getters and Setters methods:
def gender=(new_gender)
     @gender = new_gender
     puts "#{new_gender}"
  end 

  def age 
    @age
  end 

  def ethnicity
    @ethnicity
  end   
=end