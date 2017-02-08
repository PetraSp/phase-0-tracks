=begin
module Shout
  def self.yell_angrily(words)
    words + "!!!" + ":("
  end 

  def self.yelling_happily(words)
    words + "!!!" + ":)"
  end
end

p Shout.yell_angrily("I don't get it") 
p Shout.yelling_happily("Finally, I get it")

=end

module Shout
  def frequent_shout(words)
    puts "I often shout #{words}..."
  end
end

class Fan
  include Shout
end

class Boss
  include Shout
end 


fan = Fan.new
fan.frequent_shout("GGGGOOOOAAAALLLL")

boss = Boss.new
boss.frequent_shout("You're late again!!!")

