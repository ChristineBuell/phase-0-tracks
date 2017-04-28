# simple search
# Release 0

arr = [42, 89, 23, 1]

def search_array (arr, x )
counter = 0
length = arr.length
while counter < length
	if arr[counter] == x 
		return counter

	end 
	counter += 1
end
end
x = 23
p search_array(arr, x)

x = 45
p search_array(arr, x)

# Fibonacci
# Release 1

def calc_fibonacci (x)
	fib = [0, 1] 
	counter = 2
	while counter < x 
		data_point = fib[-1] + fib[-2]
		fib.push data_point
		counter += 1
	end
	return fib
end

puts "how many terms would you like to see?"
x = gets.chomp.to_i

fib_array = calc_fibonacci(x)

p fib_array 

fib_100 = 218922995834555169026

if fib_array[-1] == fib_100
	puts "Yay"
else
	puts "back to work!"
end



=begin 
	Release 2
	Bubble Sort
	array of 5 unsorted integers
	start at index 0 compare to next cell
	if next cell is lower than first: swap
	else leave and go to next cell
	repeat until all cells are done	
=end

sort_me = [7, 3, 1, 9, 5]
counter = sort_me.length

a = 0
b = 1
p sort_me

while a < (counter-1)
	b = a+1
	while b < (counter)
		if sort_me[a] > sort_me[b]
			temp = sort_me[a]
			sort_me[a] = sort_me[b]
			sort_me[b] = temp
		end
		b += 1
	end
	a += 1
end
p sort_me










