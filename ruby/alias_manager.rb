# Write a method that takes a real name: "Felicia Torres" and creates a fake name
# Input: string name, output: string name
# Define vowels and consonants

 
=begin
	
	
end	name = {
		"first_name" => "Felicia",
		"last_name" => "Torres"
	}

name
first_name = "Felicia"
last_name = "Torres"
real_name = [first_name, last_name]
real_name.class
real_name[0], real_name[1] = real_name[1], real_name[0]
p real_name

real_name

=end 
# search for vowels- How will you figure out whether a letter is a vowel?

def alias_manager(name)
	vowels = ["a", "e", "i", "o", "u"]
	consonants = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
	
	name = name.downcase.split('')
	name.map! do |letter| 
		if vowels.include?(letter)
		   vowels.rotate(1)[vowels.index(letter)]
		elsif consonants.include?(letter)
			  consonants.rotate(1)[consonants.index(letter)]
		else 
			letter
		 end
	end 
		name.join.split(" ").reverse.join(' ')
end 

alias_data = {}

puts "Please enter your first and last name. Type 'quit' when done."
loop do
name = gets.chomp
break if name == "quit"
codename = alias_manager(name)
# store data in a hash
alias_data[:name] = codename
end 

alias_data.each do |name,codename| 
  puts "Your name #{name} now changes to #{codename}."
end 


