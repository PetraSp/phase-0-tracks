# put status before and after block

def test_block
	puts "Before block is run"
	yield("two","five")
	puts "After block has run"
end 

test_block {|number1, number2| puts "#{number1}, and #{number2} are our numbers."}