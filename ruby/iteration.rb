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
