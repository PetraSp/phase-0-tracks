require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("food.db")
db.results_as_hash = true

get '/' do
	@food = db.execute("SELECT * FROM food") 
	erb :home
end

get '/food/new' do
  erb :new_food
end

post '/food' do
  db.execute("INSERT INTO food (name) VALUES (?)", [params['name']])
  redirect '/'
end