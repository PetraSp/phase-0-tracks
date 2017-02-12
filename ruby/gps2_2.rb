# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # create an empty hash
  # split item from string by space
  # iterate over the array of items
  # for each item in the array set the string as the key in the hash
  # the value of each item is 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash

# Method to add an item to a list
# input: list, item, and optional quantity
# steps:
# give na input to add to a list
# save the key and value to the hash
# output: hash

# Method to remove an item from the list
# input: list, item 
# steps: delete the key value
# output: hash

# Method to update the quantity of an item
# input: list, item, quantity
# steps: define update quantity 
# update the value of the time to the new quantity
# output: hash

# Method to print a list and make it look pretty
# input: list
# steps: put the keys and value into a string
# output: list

def create_list(grocery)
  list = {}
  groceries = grocery.split(' ')
  groceries.each do |item|
  list[item]=1
end
list
end

def add_items(list,item,quantity=1)
  list[item] = quantity
  list
end 

def remove_item(list,item)
  list.delete(item)
  list
end 

def update_quantity(list,item,quantity)
  list[item] = quantity
  list
end

def print_list(list)
  puts "----------------"
  puts "Your grocery list:"
  list.each do |item,quantity|
    puts "#{item}: #{quantity}"
  end
  puts "-----------------"
end

list = create_list("bread cheese wine")
puts "Here is the grocery list #{list}"

add(list,"lemonade",2)
print_list(list)
add(list,"tomatoes",3)
add(list,"onion")
add(list,"ice cream",4)
remove_item(list,"lemonade")
update_quantity(list,"ice cream",1)
print_list(list)

=begin
# What did you learn about pseudocode from working on this challenge?
- i learned that actual code-writing is easier if we have a detailed, accurate and easy-to-read pseudocode. 
What are the tradeoffs of using arrays and hashes for this challenge?
- a hash allows to store a quantity for each item. Arrays don't have values.
What does a method return?
- a method returns the last line of the code in the method that has a value.
What kind of things can you pass into methods as arguments?
- any object
How can you pass information between methods?
- through methods' arguments
What concepts were solidified in this challenge, and what concepts are still confusing?
- pseudocode, optional parameters. I am still confused about passing information between methods.
=end




