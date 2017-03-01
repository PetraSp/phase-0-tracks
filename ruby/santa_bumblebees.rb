class Santa
    attr_reader :ethnicity
    attr_accessor :gender, :age  

  def initialize(gender,ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0 
  end 

  def speak 
    "Ho, ho, ho! Haaaappy holidays!"
  end 

  def eat_milk_and_cookies(cookie)
    "That was a good #{cookie}!"
  end 

  def celebrate_birthday
    @age += 1 
  end 

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking << reindeer_name
  end 

  # def gender=(new_gender)
  #   @gender = new_gender
  # end 

  # def age
  #   @age
  # end 

  # def ethnicity
  #   @ethnicity
  # end

  # def gender
  #   @gender
  # end
  
end 

santa = Santa.new("female","Czech")
p santa.speak
p santa.eat_milk_and_cookies("brownie")
p santa.celebrate_birthday
p santa.get_mad_at("Vixen")
puts "Santa is now #{santa.age}"
puts "Santa is #{santa.ethnicity}"
santa.gender = "male"
puts "#{santa.gender}"


genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]


50.times do 
  Santa.new(genders.sample, ethnicities.sample)
  santa.age = rand(0..140)
    p santa.age
    p santa.gender
    p santa.ethnicity
end