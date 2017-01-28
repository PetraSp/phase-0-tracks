# METHOD DECLARATIONS
# Encrypt method: 
# - set the index to zero
# - until the index is equal to the length of a string
# - advance every letter of a string one letter forward: string[index].next


def encrypt(string)
  index = 0
  # loop over the string's letters
    until index == string.length
      # if the letter is a space, do nothing
      if string[index] == " "
         string[index]
      # conditional logic for edge case
      elsif string[index] == "z"
            string[index]= "a"
      else
        string[index] = string[index].next
      end
      index += 1
    end
    string
end

# puts encrypt("zebra")

# Decrypt method:
# - set the index to zero
# - until the index is equal to the length of a string
# - decrement every letter of a string one letter backward



def decrypt(string)
index=0
    # loop over the string's letters
    until index== string.length
    # if the letter is a space, do nothing
    if string[index] == " "
       string[index]
  # conditional logic for edge case
    elsif string[index] == "a" 
          string[index]= "z"
    else   
    # with .ord we get string's position in the alphabet and -1 goes 1 letter backwards
    previous= string[index].ord-1
    # .chr returns a one-character string at the beginning of the string
    string[index]= previous.chr 
    end
    index += 1
  end
  string
end

# puts decrypt("bcd")

# decrypt(encrypt("swordfish")) nested method worked because it first encrypted "swordfish" - resulting in "txpsegjti" and that was then decrypted resulting in "swordfish."

# OUR DRIVER CODE
# ask a secret agent whether they would like to decrypt or encrypt a password
valid_input = false
until valid_input 

puts "Would you like to decrypt or encrypt a password?"
action = gets.chomp

# ask them for the password
puts "What is the password?"
password = gets.chomp

if action == "decrypt"
  puts decrypt(password)
  valid_input = true
elsif action == "encrypt"
  puts encrypt(password)
  valid_input = true 
else
  puts "Invalid response. Please type decrypt or encrypt."
end
end



