puts "How many employees will you be processing?"
employees_to_process = gets.chomp.to_i

current_count = 1
while current_count <= employees_to_process
  
puts "What is your name?"
candidate_name = gets.chomp

puts "How old are you?" 
age = gets.chomp.to_i

puts "What year were you born?"
birth_year = gets.chomp.to_i
current_year = 2017

puts "Our company cafeteria serves garlic bread. Should we order some for you? y/n"
garlic = gets.chomp

puts "Would you like to enroll in the company's health insurance? y/n"
insurance = gets.chomp


valid_input = false
until valid_input 
	puts "Name any alergies you may have, when finished please type \"done\"."
	allergy = gets.chomp 
if allergy == "done"
	valid_input = true
elsif allergy == "sunshine"
	puts "Probably a vampire."
	valid_input = true
	end
end


if current_year - birth_year == age && (garlic == "y" || insurance == "y")
	puts "Probably not a vampire."
elsif current_year - birth_year != age && (garlic == "n" || insurance == "n")
	puts "Probably a vampire."
elsif current_year - birth_year != age && garlic == "n" && insurance == "n"
	puts "Almost certainly a vampire."
elsif candidate_name == "Drake Cula" || "Tu Fang"
	puts "Definitely a vampire."
else 
	puts "Results inconclusive."
end

current_count +=1
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

#If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”

