
class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num)
    puts "Woof! " * num
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years(human_age)
    dog_age = human_age * 7
    puts "Dog's age is #{dog_age}."
  end

  def sit
    puts "*sits*"
  end
end
=begin
# DRIVER CODE
puppy = Puppy.new
puppy.fetch("ball")
puppy.speak(3)
puppy.roll_over
puppy.dog_years(2)
puppy.sit
=end

class Barista
  def initialize
    puts "Initializing barista"
  end

  def serve_drink(drink)
      puts "Here is your #{drink}"
  end

  def wifi_password
      puts "The wifi password today is Ruby"
  end
end

#DRIVER CODE
=begin
barista = Barista.new
barista.serve_drink("Mocha")
barista.wifi_password
=end

baristas = []
index = 0

while index < 50
  baristas << Barista.new
  index += 1
end

baristas.each do |a_barista|
  a_barista.wifi_password
  a_barista.serve_drink("Mocha")
end










