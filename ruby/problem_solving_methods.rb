# simple search
# Release 0
=begin
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
=end
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







