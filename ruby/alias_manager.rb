 # Alias Manager Pseudocode

# change the string input (original name) to lowercase
# take the input and split it by the space character
# edge case vowels - "aeioua"
# edge case consonants - "bcdfghjklmnpqrstvwxyzb"
# iterate over the array with letters
# if there is a space don't do anything
# if it's a vowel then change letter to the next vowel
# assign the vowels to a variable
# find the index of the letter in my vowels variable
# store the next vowel in a variable
# if it's a consonant then change to the next consonant in the alphabet
# assign the consonants to a variable
# find the index of the letter in my consonants variable
# store the next consonant in a variable
# split the string in an array 
# capitalize
# create a new array and swap the first and last name
# join the array back to a string
# store data in a hash

def alias_manager(org_name)

vowels = "aeioua"
consonants = "bcdfghjklmnpqrstvwxyzb"
org_name = org_name.downcase

counter = 0
while counter < org_name.length
char_index = vowels.index(org_name[counter])
  		if org_name[counter]!= " "
            if char_index != nil
               org_name[counter] = vowels[char_index+1]
            else
               char_index = consonants.index(org_name[counter])
               org_name[counter] = consonants[char_index+1]
      		end
		end
counter +=1
end
new_name = org_name.split(" ")


counter = 0
while counter < new_name.length
        new_name[counter] = new_name[counter].capitalize
        counter +=1
end
code_name = new_name.reverse.join(" ")
return code_name
end
# puts alias_manager("Celia torres")


alias_data = {}

puts "Please enter your first and last name. Type 'quit' when done."
loop do
  real_name = gets.chomp
break if real_name == "quit"
  codename = alias_manager(real_name)
  # store data in a hash
  alias_data[real_name] = codename
end

alias_data.each do |name,codename|
  puts "Your name #{name} now changes to #{codename}."
end