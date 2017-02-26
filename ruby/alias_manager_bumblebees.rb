# Alias Manager Pseudocode
# input: one string (spy's real name)
# steps:
#  - SPLIT the spy's real name into an array of characters and DOWNCASE the string
#  - use a cipher hash for vowels
#  - destructively MAP over the array
#  - call the method to change all of the vowels to the next vowel in 'aeiou'
#  - call the method to change all of the consonants to the next consonant in the alphabet
#  - where a vowel would be the next letter, method chain (NEXT.NEXT)
#  - handle edge cases: "z" = "aa"; space character
#  - JOIN the array on each character
#  - SPLIT name into an array of words (first and last name)
#  - destructively MAP over the array to CAPITALIZE the first letter of each word
#  - REVERSE the first and last name and JOIN the array on each word
# output: a string (spy's fake name)


def alias_manager(name)
  name_array = name.downcase.split('')
  
  vowel_cipher = {'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a'} 

  name_array.map! do |letter|
    if vowel_cipher.has_key?(letter) 
    letter = vowel_cipher[letter] 
    else 
      if vowel_cipher.include?(letter.next) 
         letter = letter.next.next 
      elsif letter == "z"
         letter = "b"
      elsif letter == " "
         letter = " "
      else 
      letter = letter.next
      end 
    end 
  end
  name = name_array.join('')
  split_name = name.split(' ')
    split_name.map! do |word|
      word.capitalize 
    end 
  fake_name = split_name.reverse.join(' ')
end

fake_names = {}
loop do
puts "Please enter your name. To exit, please type'quit'."
input = gets.chomp
fake_name = alias_manager(input)
break if input == "quit"
puts "Your new name is #{fake_name}."
fake_names[fake_name] = input
end 

fake_names.each do |fake_name, input|
  puts "#{fake_name} is actually #{input}."
end 


