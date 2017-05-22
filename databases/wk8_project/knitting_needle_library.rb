require 'sqlite3'

# Has an entry for all knitting needles 
# It can print out list of knitting needles
# It can add a knitting needle
# It can delete a knitting needle
# It can set one as unavailable for use (takes a string, in project or loaned to someone)
# It can print list of needles that are unavailable.
# It can print list of needles that are available.
# It can be searched for a particular size

k_needle_array = []



$kdb = SQLite3::Database.new("knitting_needles.db")
$kdb.results_as_hash = true


create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS knitndls(
    id INTEGER PRIMARY KEY,
    size VARCHAR(255),
    length VARCHAR(255),
    is_available BOOLEAN,
    where_is_it VARCHAR(255)
  )
SQL

$kdb.execute(create_table)

 #Some data to add in for testing. Uncomment and then comment out after the first time you run it
=begin
$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('5', '8', 'false', 'Kira has them')") 
$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('13', '12', 'false', 'Catherine has them')") 
$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('2', '16', 'false', 'Sally has them')") 
$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('7', '6', 'true', '')") 
$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('13', '6', 'true', '')") 
=end


# Search for needles of a given size 
# This works for a small project, but would too inefficient for a large db.
def needle_by_size
puts "What size needle are you looking for?"
ndl = gets.chomp
stm = $kdb.prepare( "select id, size, length, is_available, where_is_it from knitndls")
  rs = stm.execute
   while (row = rs.next) do
   		if row['size'] ==  ndl 
   			if row['is_available'] == 'true'
				puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length is available to use.}
			else 
				puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length have been loaned to: #{row['where_is_it']}.}
     		end
     	end
    end
end


def print_list
 	stm = $kdb.prepare( "select id, size, length, is_available, where_is_it from knitndls" )
 	rs = stm.execute
   	while (row = rs.next) do
   		if row['is_available'] == 'true'
			puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length is available to use.}
		else 
			puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length have been loaned to: #{row['where_is_it']}.}
    	end
	end
   
end

# Add needles to collection
def add_needles
	puts "Enter needle size (US)"
		size = gets.chomp
	puts "Enter needle length:"
		length = gets.chomp
	    is_available = 'true'
		where_is_it = ""

	$kdb.execute("INSERT INTO knitndls(size, length, is_available, where_is_it) VALUES (?, ?, ?, ?)", size, length, is_available, where_is_it)
end

# Return a pair back into the collection
def return_pair
	puts "What is the id number of the pair of needles you have back in your collection?"
	ndl = gets.chomp.to_i
   	$kdb.execute("UPDATE knitndls SET is_available = 'true', where_is_it = '' WHERE id = #{ndl}")

end

# Change status to unavailable and say who has them. 
def loan_pair
	puts "What is the id number of the pair of needles you are loaning out?"
	ndl = gets.chomp.to_i
	puts "Who is borrowing them?"
	# To keep from crashing, remove apostrophes. 
	where_ndls = gets.chomp.delete(?')#.tr ' ', ?_
   	$kdb.execute("UPDATE knitndls SET is_available = 'false', where_is_it = '#{where_ndls}' WHERE id = #{ndl}")

end


# Remove a pair of needles permanently from the collection
def delete_pair
	puts "What is the id number of the pair of needles you want to remove?"
	ndl = gets.chomp.to_i
	$kdb.execute("DELETE FROM knitndls WHERE id = #{ndl}")

end

# Exit the database
def end_session
	puts "exiting now"
	exit 

end

loop do 
		puts "\n\t\tPlease choose from the following:\n
		1.  Print a list of needles in your collection
		2.  Add a pair of needles
		3.  Search by needle size
		4.  Return a pair to your collection
		5.  Loan a pair from your collection
		6.  Remove a pair from your collection
		7.  Quit"


		case gets.chomp
		when '1'
			print_list
		when '2'
			add_needles
		when '3'
			needle_by_size
		when '4'
			return_pair
		when '5'
			loan_pair
		when '6'
			delete_pair
		when '7'
			end_session
		end
end

 

