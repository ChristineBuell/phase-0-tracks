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


