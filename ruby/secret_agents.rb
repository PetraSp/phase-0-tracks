# METHOD DECLARATIONS
# Encrypt method: 
# - advance every letter of a string one letter forward: string[index].next
# - lowercase input and output
# - no change to a space character (should remain a space character)


def encrypt(string)
  index = 0
  # loop over the string's letters
    until index == string.length
      if string[index] == " "
        puts string[index]= " "
      # conditional logic for edge case
      elsif string[index] == "z"
        puts string[index]= "a"
      else
        puts string[index].next
      end
      index += 1
    end
end

puts encrypt("zebra")

# Decrypt method:
# - decrement every letter of a string one letter backward
# - lowercase input and output
# - no change to a space character

def decrypt(string)
index=0
    # loop over the string's letters
    until index== string.length
    if string[index] == " "
      puts string[index] = " "
  # conditional logic for edge case
    elsif string[index] == "z" 
      puts string[index]= "a"
    else   
    # with .ord we get string's position in the alphabet and -1 goes 1 backwards
    previous= string[index].ord-1
    # .chr returns a one-character string at the beginning of the string
    puts previous.chr 
    end
    index += 1
end
end

puts decrypt("bcd")



