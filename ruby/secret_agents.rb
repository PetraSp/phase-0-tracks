def encrypt(string)
  index = 0
    until index == string.length
      if string[index] == " "
        puts string[index]= " "
      elsif string[index] == "z" 
      puts string[index]= "a"
      else
        puts string[index].next
      end
      index += 1
    end
end

puts encrypt("zebra")


def decrypt(string)
index=0
    until index== string.length
    if string[index] == " "
      puts string[index] = " "
    else   
    previous= string[index].ord-1
    puts previous.chr 
    end
    index += 1
end
end

puts decrypt("bcd")
