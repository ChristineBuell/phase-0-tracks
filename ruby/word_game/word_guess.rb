class Word_Guess
	attr_reader :guesses_left 
	attr_reader :guessed_counter
	attr_accessor :correct

	def initialize
	    #letters guessed
	    @already_guessed = []
	    #word taken in
	    @word = []
	    #array of underscores and correct guesses
	    @correct = []
	    #One guess for each letter
	    @guesses_left = 0
	    @found_flag = 0
	   
	   
	  end

	# Set up the game, show how many letters in word
	  def start_game(a_word)
	    word_to_guess = a_word.downcase
	    @word = word_to_guess.split('')
	    @guesses_left = word_to_guess.length
	    index = 0
	    # Fill with underscores, one for each letter
	    while index < word_to_guess.length
	      @correct[index] = "_"
	      index += 1
	    end
	    puts "A word has been entered for you to guess"
	    p @correct.join('')
	  end

	  def guess_letter(a_letter)
	   	puts ""
	    letter = a_letter.downcase
	    puts "You tried letter #{letter}."
    		if @already_guessed.include?(letter)
      			puts "You already guessed #{letter}"
      			update_progress()
      		else
      			@guesses_left -= 1
	    		@already_guessed.push(letter)
			end
	    @found_flag = 0
	    @word.each_index do |index|
		     if @word[index] == letter
		        @correct[index] = letter
		        @found_flag = 1
		     end
	     end
	     		
			    if @found_flag == 1 
			      result = "#{letter} IS in the word."
			      update_progress()
			    end
			    if @found_flag != 1 && 
			      result = "No #{letter} is in this word."
			      update_progress()
			    end
	    	#update_progress()
	    	return result
  		end

  		def show_progress
  			p "Here is your progress so far: #{@correct.join('')}"
  		end

		def update_progress()
		    # Check @correct to see if it has any underscores left
		    # Word still has underscores, but no guesses left so player loses
		    if @correct.include?("_") && @guesses_left == 0
		       game_over_lose()
		    elsif @correct.include?("_") && @guesses_left > 0
		      # Still underscores and guesses left greater than 0, so game continues
		      show_progress()
		      p "You have #{guesses_left} guesses left"
		    else
		      # No underscores so all the letters are guessed
		      game_over_win()
		    end
		  end

		  def game_over_win()
		    puts "The word is #{@correct.join('')}"
		    guesses_used = @word.length - @guesses_left
		    puts "You WIN in #{guesses_used} guesses!"
		    exit
		  end

		  def game_over_lose()
		    puts ""
		    puts "The correct word was #{@word.join('')}"
		    puts "LOOOSSSEERRRRRR!!"
		    exit
		  end
end
=begin
game = Word_Guess.new

game.start_game("Ruby")
game.guess_letter("l")

game.guess_letter("b")
game.guess_letter("l")

game.guess_letter("o")
=end

