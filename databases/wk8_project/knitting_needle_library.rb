require 'sqlite3'

# Has an entry for all knitting needles 
# It can print out list of knitting needles (sorted by size)
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

#kdb.execute("DROP TABLE knitting_needles")
$kdb.execute(create_table)
#$kdb.execute("INSERT INTO knitndls (size, length, is_available, where_is_it) VALUES ('4.5', '8', 'false', 'Catherine has it')") 

# Search for needles of a given size
def needle_by_size
puts "What size needle are you looking for?"
ndl = gets.chomp
stm = $kdb.prepare( "select id, size, length, is_available, where_is_it from knitndls where size == ?" )
  rs = stm.execute
   while (row = rs.next) do
   	if row['is_available'] == 'true'
		puts %Q{Needle size #{row['size']} in #{row['length']} inch length is available to use.}
	else 
		puts %Q{Needle size: #{row['size']} in #{row['length']} inch length is not available because: #{row['where_is_it']}.}
     end
    end
end

=begin

dlsize|
	if size = ndl 
	temp = $kdb.execute("SELECT * FROM knitndls WHERE name = ?", ndl)
	puts temp
end
end

end 
=end 
def print_list

 stm = $kdb.prepare( "select id, size, length, is_available, where_is_it from knitndls" )
  rs = stm.execute
   while (row = rs.next) do
   	if row['is_available'] == 'true'
		puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length is available to use.}
	else 
		puts %Q{Set number #{row['id']} in size #{row['size']} in #{row['length']} inch length is not available because: #{row['where_is_it']}.}
     
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

# Exit the database
def end_session
$kdb.close
puts "exiting now"
exit 

end

loop do 
		puts "\n\t\tPlease choose from the following:\n
		1.  Print a list of needles in your collection
		2.  Add a pair of needles
		3.  Search by needle size
		4.  Update the availability of a pair of needles
		5.  Remove a pair from your collection
		5.  Quit"


		case gets.chomp
		when '1'
			print_list
		when '2'
			add_needles
		when '3'
			needle_by_size
		when '4'
			puts "need a method for this"
		when '5'
			puts "need a method for this"
		when '6'
			end_session
		end
	end

 

