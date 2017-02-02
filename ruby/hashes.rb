# - Keys should be symbols
# - Prompt the user for client's name; age; number of children; decor theme.
# - Convert any user input to the appropriate data type
# - Print the hash back out to the screen when the designer has answered all of the questions. 
# - Ask user if they would like to update a key value pair (no loop)
# - Process input, and update the appropriate value
# - Print the latest version of the hash, and exit the program

client_information = {
  name: "name",
  age: "age",
  number_of_children: "number_of_children",
  decor_theme: "decor_theme"
}

# DRIVER CODE

puts "What's your client's name?"
 client_information [:name] = gets.chomp

puts "What's your client's age?"
 client_information [:age] = gets.chomp.to_i

puts "How many children your client has?"
 client_information [:number_of_children] = gets.chomp.to_i

puts "What's your client decor theme?"
 client_information [:decor_theme] = gets.chomp

p client_information


puts "What keys would you like to update? Please type 'none' or the key."
      input = gets.chomp 
  if input == "none"
    puts "Thanks for using the program. Bye!"
  else 
  	 input = input.to_sym
   	puts "Please enter a new value:"
 	  new_value = gets.chomp 
 	  if new_value == :name || :decor_theme 
 	  client_information[input] = new_value
 	  else new_value == :age || :number_of_children
 	  client_information[input] = new_value.to_i
  	  end
 	 p client_information
  end 