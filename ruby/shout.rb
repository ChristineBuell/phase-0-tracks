
=begin
module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end

	def self.yelling_happily(words)
		words + "!" + " :D"
	end
	
end
 

# Driver code (typed at command line I assume)
Shout.yell_angrily("Get off my lawn")

Shout.yelling_happily("Have a nice day")

=end

module Shout
	def yell_angrily(words)
		puts words + "!!!" + " :("
	end

	def yelling_happily(words)
		puts words + "!" + " :D"
	end
end

class Coach
	include Shout
end

class Sister
	include Shout
end



coach = Coach.new 
coach.yelling_happily("Good Job")
coach.yell_angrily("Are you blind?")

sister = Sister.new
sister.yelling_happily("Yay")
sister.yell_angrily("I'm telling Mom")