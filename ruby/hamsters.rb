puts "What is the hamster's name?"
hamster_name = gets.chomp

puts "What is the volume level? (on 1 to 10)"
volume = gets.chomp.to_i

puts "What is the hamster's fur color?"
fur_color = gets.chomp

puts "Is the hamster a good candidate for adoption? (y/n)"
adoption = gets.chomp
	if adoption == "yes"
		adoption = true
	else adoption = false
	end

puts "What is hamster's estimated age?"
estimated_age = gets.chomp
	if estimated_age == ''
	   estimated_age = nil
	else estimated_age = estimated_age.to_i
end


puts "Hamster's name is #{hamster_name}, its volume level is #{volume}. It has a #{fur_color} fur. Is it good to be adopted: #{adoption}. Estimated hamster's age is: #{estimated_age}."

puts "Thanks for using the program!"