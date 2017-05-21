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
knitndls.each do |ndlsize|
	if size = ndl 
	temp = $kdb.execute("SELECT * FROM knitndls WHERE name = ?", ndl)
	puts temp
end
end

end 

def print_list





  $kdb.execute( "select * from knitndls" ) do |row|
  	
  	puts %Q{Needle size: #{knitndls['size']} in #{knitndls['length']} length is available = #{knitndls['is_available']}}
   # p row
  end
end
=begin
row = $kdb.execute("SELECT * FROM knitndls")
puts row 

end
=end 
def add_needles
puts "Enter needle size (mm)"
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
	puts "Here are your options:
		1.  Print list of needles in your collection
		2.  Add pair of needles
		3.  Search by needle size
		4.  Mark a pair as unavailable
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
			end_session
		end
	end

 

