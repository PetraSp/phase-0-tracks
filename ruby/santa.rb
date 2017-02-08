class Santa

  def initialize 
    puts "Initializing Santa instance ..."
  end 

  def speak 
    puts "Ho, ho, ho! Haaaappy holidays!" 
  end 

  def eat_milk_and_cookies (cookie)
    puts  "That was a good #{cookie}!"
  end  
end

s = Santa.new
s.speak
s.eat_milk_and_cookies("snickerdoodle")
