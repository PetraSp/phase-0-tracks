class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    num.times {|num| puts "Woof!"}
  end

  def roll_over
    puts "rolls over"
  end

  def dog_years(num)
    num / 7
  end 

  def play_dead
    puts "play dead"
  end 
end

# Driver code
fido = Puppy.new
fido.fetch("ball")
fido.speak(3)
fido.roll_over
fido.dog_years(21)
fido.play_dead


class Car

  def initialize
    puts "Initializing new car instance..."
  end 

  def honk(num)
    num.times {|num| puts "Honk!"}
  end

  def speed
    puts rand (30..100)
  end

end 

# Driver code
red = Car.new
red.honk(3)
red.speed

Red = []

count = 0
while count < 50
  Red[count] = Car.new  
  count += 1
end 

Red.each do |red|
  red.honk(3)
  red.speed
end 




