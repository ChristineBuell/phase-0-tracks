

class Santa
	def initialize(gender, ethnicity)
	  
	  @gender = gender
	  @ethnicity = ethnicity
	  @age = 0
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak()
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie) 
		puts "That was a good #{cookie}"
	end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
	g = 1 + rand(7)
	e = 1 + rand(7)
  santas << Santa.new(genders[g], ethnicities[e])
end


p santas



