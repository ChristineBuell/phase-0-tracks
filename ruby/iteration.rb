

def print_status 
	status1 = "Incomplete"
	status2 = "Complete"
puts "Your status is:"
yield ("status1", "status2")

end

print_status {|x, y| "Your status is: #{x} or #{y}!"}