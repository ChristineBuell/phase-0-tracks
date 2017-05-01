# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
                              
supply_list = zombie_apocalypse_supplies.join("*")
print supply_list

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods. 


list_length = zombie_apocalypse_supplies.count
puts list_length
index = 0
swap_flag = true

while swap_flag == true
  swap_flag = false
  while index < list_length - 1
    if zombie_apocalypse_supplies[index].downcase.ord > zombie_apocalypse_supplies[index + 1].downcase.ord
      z_temp = zombie_apocalypse_supplies[index + 1]
      zombie_apocalypse_supplies[index + 1] = zombie_apocalypse_supplies[index]
      zombie_apocalypse_supplies[index] = z_temp
      swap_flag = true
    end
    index += 1
  end
  index = 0
end
puts "Sorted list: "
print zombie_apocalypse_supplies


# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def check_list (find_item)
  zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

  zombie_apocalypse_supplies.each do |item|
    if item == find_item
      puts "#{item} is on the list!"
    else 
      puts "#{item} isn't on the list"
    end 
  end
end 
check_list("batteries")

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

=begin I wasn't sure if we could use .pop, so I added one more below.
z_length = zombie_apocalypse_supplies.length 
zombie_apocalypse_supplies.pop(z_length - 5)
puts zombie_apocalypse_supplies
=end 

index = 0
z_length = zombie_apocalypse_supplies.length
while index < z_length
  if index > 4
    zombie_apocalypse_supplies[index] = nil 
  end
  index += 1 
end
p zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
zombie_apocalypse_supplies.concat(other_survivor_supplies).uniq

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.map do |animal, year|
  if index < 6
    print  "#{animal}-#{ year}*"
  else
    print "#{animal}-#{ year}" 
  end
  index += 1 
end


# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
#This is the only way I've been able to get it to work so far:
extinct_animals.delete_if{|k,v| v > 1999}

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
#extinct_animals.update(extinct_animals){|k,v| v -= 3}
extinct_animals.map do |animal, year|
  extinct_animals[animal] = year -= 3
 
end

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
extinct_animals.each do |animal, year|
 animals = ["Andean Cat", "Dodo", "Saiga Antelope"]
 index = 0 
  while index < animals.length 
    if animal ==  animals[index]
     puts "#{animal} is on the list!"
    end 
      index += 1 
    end 
  end


# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
temp = {}
temp = extinct_animals.select{|k,v| k == "Passenger Pigeon"}
temp.merge!(extinct_animals){|k,v1,v2|v1}
extinct_animals = temp
return_deleted = extinct_animals.shift
puts extinct_animals
p return_deleted 