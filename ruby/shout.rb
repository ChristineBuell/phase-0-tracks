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

  