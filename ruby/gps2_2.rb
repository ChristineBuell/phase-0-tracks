=begin
Release 4: Reflections






=end




=begin
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
- DONT EVEN DO Prompt the user to enter a string with instructions, print
- DONT EVEN DO accept user input, save to variable
- split the user input by space, using .split(' ')
# set default quantity
- iterate through the array of items
- Assign each item to a hash entry with key of item value of item name
- give each new hash entry a qty key, value of 1
# print the list to the console [can you use one of your other methods here?]
- REFER TO BOTTOM THING
# output: [what data type goes here, array or hash?]
[
{
Item: carrots
QTY: 1
},
]
items[0][:qty]
=end

def createlist(list)
	hasharray = []
  splitlist = list.split(' ')
  splitlist.each do |item|
    hasharray << {item: item, qty: 1}
  end
  print_list(hasharray)
  hasharray
end


=begin
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
- accept argument to method of single string, no spaces
- array << {item:val, qty:val}
# output:
- Return the new full array of hashes
=end

def additem(list, item, qty = 1)
  list << {item: item, qty: qty}
  list
end

=begin
# Method to remove an item from the list
# input: list, name of the item you wish to remove
# steps:
- accept parameter to method that is name of item you want to delete
- iterate through aray of hashes for item where item value is paramter
- delete that guy
# output:
- Return new full aray of hashes minus deleted item
=end

def removeitem(list, item)

  list.delete_if { |iterator| iterator[:item] == item }
end

=begin
# Method to update the quantity of an item
# input:
- Accept parameter to method that is The list, the name of item you want to adjust qty of, and new qty
# steps:
- accept parameter to method
- iterate through aray of hashes for item where item value is paramter
- Update that items qty key to new value
# output:
The updated item value and its qty, using the print method
=end 
def update_amount(list, item, amount)

	list.each do |iterator|
		if iterator[:item] == item
			iterator.replace({item: item, qty: amount}) 
		end
	end
	list
end



=begin

# Method to print a list and make it look pretty
# input:
- The list
# steps:
- iterate through each hash in the storage array
- print the item keys value, ' - QTY: ' and the qty keys value, each on a new line
# output:
Formatted list like this 'Carrots - QTY 1'
=end
def print_list(list)
	list.each do |iterator|
	puts "#{iterator[:item].split.map(&:capitalize).join(' ')} - QTY #{iterator[:qty]}"
	end

end



list = "grapes apples bagels milk lentils eggs" 
item_array = []

item_array = createlist(list)
additem(item_array, "lemonade", 2)
additem(item_array, "tomatoes", 3)
additem(item_array, "onions")
additem(item_array, "ice cream", 4)



removeitem(item_array, "lemonade")
update_amount(item_array, "ice cream", 1)

print_list(item_array)







