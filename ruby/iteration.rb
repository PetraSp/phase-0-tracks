# put status before and after block

def test_block
	puts "Before block is run"
	yield("two","five")
	puts "After block has run"
end 

test_block {|number1, number2| puts "#{number1}, and #{number2} are our numbers."}


shopping_list = ["bread", "cereal", "milk", "apples"]
puts "Shopping list before each method: #{shopping_list}"
shopping_list.each do |item|
	puts item
end  
puts "Shopping list after each method: #{shopping_list}"

puts "Shopping list before map! method: #{shopping_list}"
shopping_list.map! do |item|
	item.upcase
end
puts "Shopping list after map! method: #{shopping_list}"

countries_capitals = {
	czech_republic: "Prague",
	usa: "Washington D.C.",
	canada: "Ottawa",
	puerto_rico: "San Juan"
}


puts "Countries capitals before each method: #{countries_capitals}"
countries_capitals.each do |country,capital|
	puts "The capital of #{country} is #{capital}"
end 
puts "Countries capitals after each method: #{countries_capitals}"

numbers = [2,3,9,10]
puts "numbers before delete_if: #{numbers}"
numbers.delete_if {|number| number < 5}
puts "numbers after delete_if : #{numbers}"


letters_numbers = {
	a: 2,
	b: 3,
	c: 9,
	d: 10,
}
puts "letters_numbers before delete_if: #{letters_numbers}"
letters_numbers.delete_if {|letter, number| number < 5 }
puts "letters_numbers after delete_if : #{letters_numbers}"

numbers = [2,3,9,10]
puts "numbers before keep_if: #{numbers}"
numbers.keep_if {|number| number < 5}
puts "numbers after keep_if : #{numbers}"

letters_numbers = {
	a: 2,
	b: 3,
	c: 9,
	d: 10,
}
puts "letters_numbers before keep_if: #{letters_numbers}"
letters_numbers.keep_if {|letter, number| number < 5 }
puts "letters_numbers after keep_if : #{letters_numbers}"

numbers = [2,3,9,10]
puts "numbers before select!: #{numbers}"
numbers.select! {|number| number < 5}
puts "numbers after select!: #{numbers}"

letters_numbers = {
	a: 2,
	b: 3,
	c: 9,
	d: 10,
}
puts "letters_numbers before select!: #{letters_numbers}"
letters_numbers.select! {|letter, number| number < 5 }
puts "letters_numbers after select! : #{letters_numbers}"

numbers = [2,3,9,10]
puts "numbers before drop_while: #{numbers}"
new_numbers = numbers.drop_while {|number| number.even?}
puts "new_numbers after drop_while: #{new_numbers}"


letters_numbers = {
	a: 2,
	b: 3,
	c: 9,
	d: 10,
}
puts "letters_numbers before reject!: #{letters_numbers}"
letters_numbers.reject! {|letter, number| number.even? }
puts "letters_numbers after reject! : #{letters_numbers}"



