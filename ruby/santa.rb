

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender 

	def initialize(gender, ethnicity)
	  @gender = gender
	  @ethnicity = ethnicity
	  @age = 1 + rand(140)
	  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	end

	def speak()
		puts "Ho, ho, ho! Haaappy holidays!"
	end

	def eat_milk_and_cookies(cookie) 
		# Takes in a cookie type
		puts "That was a good #{cookie}"
	end
	def celebrate_birthday 
		@age += 1 
	end
	def get_mad_at(reindeer)
		# Reinder put in the back of the array
		index = 0
		while index < @reindeer_ranking.count
			if reindeer == @reindeer_ranking[index]
			  	@reindeer_ranking.push(reindeer)
			  @reindeer_ranking.delete_at(index)
				break
			end
			index += 1
		end
	end

end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "Martian", "Icelandic", "Native American"]
# Instantiate 50 santas
index = 0
while index < 50
	#randomizes individually
	g = 1 + rand(7)
	e = 1 + rand(9)
	#initializes a santa
    santas = Santa.new(genders[g], ethnicities[e])
    #prints santa to the screen
    puts "Santa #{index + 1} is a #{santas.ethnicity} #{santas.gender} and #{santas.age} years old!" 
    index += 1
end



