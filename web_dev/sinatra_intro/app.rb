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

# A GET route at '/contact' that displays and address

get '/contact' do
  "351 W Hubbard St<br>Chicago, IL 60654"
end

# A GET route at '/great_job' that takes a person's name as a query parameter and says 'Good job, [name]!'
  # If there is no query parameter, simply says 'Good job!'

get '/great_job' do
  name = params[:name]
  if name == nil
    "Great Job!"
  else "Great Job, #{name}!"
  end
end

# A GET route at '/add/x/y' that takes two integers and responds with (returns) a string of the sum of the two numbers

get '/add/:x/:y' do
  sum = params[:x].to_i + params[:y].to_i
  sum.to_s
end

# a GET route at '/campus/[campus-name]' that returns all students at that campus

get '/campus/:campus' do
  response = "Students at #{params[:campus]}:<br><br>"
  students = db.execute("SELECT * FROM students WHERE campus='#{params[:campus]}'")
  students.each do |student|
    response << "Name: #{student['name']}<br>Age: #{student['age']}<br><br>"
  end
  response
end















