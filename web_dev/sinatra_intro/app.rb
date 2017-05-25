# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /

get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student


get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# Prints contact info for students (same address for each!)
get '/contact' do 
  students = db.execute("SELECT * FROM students")
  contact_info = ""
  students.each do |student|
  contact_info << "#{student['name']}<br>"
  contact_info << "123 Somewhere lane <br>"
  contact_info << "Sequim, WA 98773<br> <br>"
  end
  contact_info

end

# Prints great job "name" 
get '/great_job' do

  name = params[:name]
    if name
      "Great Job #{name}!"
    else 
      "Great Job!"
    end
  end

# Adds two numbers and returns
get '/add_two' do
 
  result1 = params["num1"].to_i
  result2 = params["num2"].to_i
  final_result = result1 + result2
  "#{params[:num1]} + #{params[:num2]} = #{final_result.to_s}"
end

get '/get_campus' do

  place = params[:campus]
  "Campus: #{params[:campus]}"
  students.each do |student|
  find_campus = db.execute("SELECT * FROM students WHERE campus=?", [params[:campus]][0])
   "#{params[:name]} is at #{params[:campus]} campus."

end





 end

=begin
Release 1 

Ruby web frameworks: Rails is the biggest one, Grape came after sinatra, Padrino which is based on 
Sinatra and Cuba, which is a "micro framework".

Databases that work with sinatra: MySQL, Mongo db, postreSQL, and some major ones like Oracle and DB2.

A webstack is a group of softwar components needed for web development. LAMP is an example, it includes Linux, Apache, MySQL and PHP.   

  
=end









