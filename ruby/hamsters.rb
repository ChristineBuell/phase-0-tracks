puts "What is the hamster's name?"
name = gets.chomp

puts "How loud the hamster? (1-10)"
volume = gets.chomp.to_i

puts "What color is it?"
color = gets.chomp

puts "Can hamster be adopted?(y/n)"
adopt = gets.chomp

puts "How old?"
age = nil
age = gets.chomp.to_f
puts "This  hamster's name is: #{name}"
puts "#{name}'s volume level is: #{volume}!"
puts "#{name}'s fur is #{color}"

if adopt == "y"
    puts "#{name} can be adopted!"
else
    puts "#{name} cannot be adopted!"
end

if age == nil || age == 0.0
    puts "Age is a secret."
else
puts "#{name} is #{age} years old"
end