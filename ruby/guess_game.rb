class GuessGame

  attr_reader :is_over 

  def initialize
    @input_word = ""
    @input_word_array = []
    @correct_letters = []
    @guess_count = 0
    @is_over = false
  end 

  def enter_word(word)
    @input_word = word
    @input_word_array = word.split('')
    length = @input_word.length
    puts "You have #{length} guesses."
  end

  def correct_letters
    @input_word.length.times do
    @correct_letters << "_"
    end
    @correct_letters
  end 

# store user's guesses in array and check for repeated guesses
  def guessed_letters(letter)
    guessed_letters = []
    if guessed_letters.include?(letter) == true
      puts "You have already guessed that letter, try again."
    else 
    guessed_letters << letter
    @guess_count +=1
    end
  end

  def guess_letter(letter)
      if @input_word_array.include?(letter) == true
      index = @input_word_array.index(letter)
      p @correct_letters[index] = letter 
      @correct_letters
      else 
      @input_word_array.include?(letter) == false
      puts "That's not correct, guess again." 
      end
  end
   
  def game_over
    if @guess_count == @input_word_array.length
      puts "You ran out of guesses."
      @is_over = true
    elsif @correct_letters == @input_word
      puts "Congratulations! You won!"
      @is_over = true
    else 
      @is_over = false 
    end 
  end 
      
# user interface

puts "Welcome to the Guess Game!"
game = GuessGame.new

puts "Please enter a word:"
word = gets.chomp 
game.enter_word(word)


game.correct_letters

until game.is_over
puts "Please enter a letter"
letter = gets.chomp
game.guessed_letters(letter)
game.guess_letter(letter)
game.game_over
  
end
end 