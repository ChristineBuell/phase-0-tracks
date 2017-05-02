

class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender 

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
	def celebrate_birthday 
		@age += 1 
	end
	def get_mad_at(reindeer)
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
=begin
	def gender=(new_gender)
		@gender = new_gender
	end
	def age
		@age 
	end
	def ethnicity
		@ethnicity
	end
=end 
end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

genders.length.times do |i|
	g = 1 + rand(7)
	e = 1 + rand(7)
  santas << Santa.new(genders[g], ethnicities[e])
end
santas[2].gender = "whatever"
santas[2].celebrate_birthday
puts santas[2].ethnicity
puts santas[2].age
#p santas[2]
#p santas
santas[2].get_mad_at("Dasher")
p santas[2]


