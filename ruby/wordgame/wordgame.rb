class WordGame
  attr_reader :guess_count, :is_over, :guesses,:secret_letter_array
 
  def initialize
    @secret_word
    @guess_count
    @guesses = []
    @is_over = false
    input_secret_word
    input_guess_letter
    p @guess_count
  end

  def input_secret_word
    puts "Please enter a secret word"
    @secret_word = gets.chomp
    @guess_count = @secret_word.length
    puts "You have #{@guess_count} attempts to guess the word"
      @guess_count.times do |x|
      @guesses.push("-")
      end
  end

  def input_guess_letter
    counter = 0
    guessed_letters = []
    arr_temp = []
#iterate while the user guesses until the length of the word or if the word is not guessed (@is_over = false)
    while (counter < @guess_count && @is_over == false)
    puts "Please enter a letter"
    guess_letter = gets.chomp
    secret_letter_array = @secret_word.split('')
      #if the guess letter exist in the secret Word then find the index of the letter in the Word and store it in the same index in @guesses array
      if @secret_word.include?(guess_letter)
        # gives an index placement
        #select returns and array of indicies where the string occurred in the array
        #we store that in temp array as values and then iterate over the temp array to
        #insert the guess_letter in the right index of @guesses
        arr_temp = secret_letter_array.each_index.select{|x|
          secret_letter_array[x] == guess_letter}
        
        arr_temp.each do |x|
          @guesses[x] = guess_letter
        end
        
      end

      #check if the user has already guessed the letter before
      #dont increase the counter to keep the same number of guesses
      if guessed_letters.include?(guess_letter)
        counter -=1
        p "you have already guessed that letter. You get an extra chance!!"
      else
          guessed_letters[counter] = guess_letter
      end

      final_guessed_word = @guesses.join("")
      p final_guessed_word
      counter +=1
      
      if final_guessed_word == @secret_word
        @result = true
        message = "YOU WIN!"
      else
        message = "YOU LOSE"
      end
    end
    
    #print the final message whether win or lose
    p message
  end
end

puts "Welcome to the Word Game!"
game = WordGame.new



  
