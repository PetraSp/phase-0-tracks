# write a program that will allow an interior designer to enter the details 
# of a given client: the client's name, age, number of children, decor theme, and so on
# keys should be symbols
# input: client's information (string, integer, boolean)
# steps: 
#   - create an empty hash
#   - ask designer for an input
#   - convert designer's input to the appropriate data type.
#   - store his/her input in a hash
#   - print the hash back out to the screen when the designer has answered all of the questions
#   - give the user the opportunity to update a key
#   - process input, and update the appropriate value
#   - print the laterst version of the hash, and exit the program
# output: hash


client_information = {}
puts "Client's name:"
  client_information [:name] = gets.chomp

puts "Client's age:"
  client_information [:age] = gets.chomp.to_i

puts "Number of children:"
  client_information [:number_of_children] = gets.chomp.to_i

puts "Likes light interiors: (please type true or false)"
  client_information [:light_interior] = gets.chomp

puts "Decor's theme:"
  client_information [:decor_theme] = gets.chomp

p client_information 

puts "Would you like to update any information? If so, please type 'yes', otherwise type 'none'."
  input = gets.chomp
  if input == "none"
    puts "Thank you for using the program. Bye!"
  else input = "yes"
    puts "What information would you like to update?"
    key = gets.chomp.to_s
    puts "Please enter the new value:"
    new_value = gets.chomp
    client_information[key] = new_value
  end
    p client_information


