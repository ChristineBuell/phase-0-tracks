

=begin 
Start of game
Driver code enters word for guessing which is taken in as a string
Make sure string is lower case
Word split out into character array
guess_count equals word length of amount of guesses allowed
Keeps array of guesses to compare with new guesses
Array of correct entries containing outline of word is printed to screen: Underscores for each letter with quotes on each end

User enters a letter
Make sure letter is lower case
Length is checked to see if it's a word or single letter
Letter checks to see if letter already guessed.
		IF yes, message, says how many more tries
			goes to next try

		IF no, checks against word entered

		IF letter matches
			Replace underscore(s) at appropriate points with letter 
			Check against correct word array for placement(s) of letter
			Guess count -1
			Call update method
		Else
			Guess count -1
			Call update method
			
Update method to see where we are in game
IF no guesses left and still "_" in the correct entries array then call game over lose
ELSIF no guesses left and still "_" in correct entries array then continue playing
ELSE call game over wins (That means there are no "_" in the array, so it is solved) 

Game over messages methods
gameover wins prints correct word
You win in x guesses
exit

Game over lose prints correct word
Taunts loser
exit



=end
require_relative 'word_guess'

describe Word_Guess do 
let(:word_guess) {Word_Guess.new}

it "takes in a letter" do 
	expect(word_guess.start_game("ruby")).to eq "____"

end

it "letter taken in and compared" do 
	word_guess.start_game("ruby")
	expect(word_guess.guess_letter("u")).to eq "u IS in the word."

end

it "uppercase letter converted to lower" do
	word_guess.start_game("ruby")
	expect(word_guess.guess_letter("U")).to eq "u IS in the word."
end

it "@correct is placing letter in right position" do
		word_guess.start_game("ruby")
		word_guess.guess_letter("u")
		expect(word_guess.show_progress()).to eq "Here is your progress so far: _u__"

end

it "guesses_left is NOT decrimenting when letter is already guessed" do 
	word_guess.start_game("ruby")
	word_guess.guess_letter("u")
	word_guess.guess_letter("u")
	expect(word_guess.update_progress()).to eq "You have 3 guesses left"
end	


# This works but seemed to interfere with the next test.
it "Prints you win when word guessed" do
	word_guess.start_game("ruby")
	word_guess.guess_letter("u")
	word_guess.guess_letter("r")
	word_guess.guess_letter("y")
	word_guess.guess_letter("b")
	expect(word_guess.game_over_win()).to eq "You WIN in 4 guesses!"

end
# Both this and the last test work, but they don't both run at the same time
it "Prints you lose when word not guessed" do
	word_guess.start_game("ruby")
	word_guess.guess_letter("u")
	word_guess.guess_letter("m")
	word_guess.guess_letter("g")
	word_guess.guess_letter("b")
	expect(word_guess.game_over_win()).to eq "LOOOSSSEERRRRRR!!"

end

end














