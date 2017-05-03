
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
		puts words + "!!!" + " 8-(("
	end

	def yelling_happily(words)
		puts words + "!" + " :D"
	end
end

class Noise
	include Shout
end

shout = Noise.new 
shout.yelling_happily("Yay")
shout.yell_angrily("Arrgh")