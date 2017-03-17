# require gem
require 'sqlite3'

# create SQLITE3 database
db = SQLite3::Database.new("things_toDo.db")
db.results_as_hash = true 

create_table = <<-SQL 
  CREATE TABLE IF NOT EXISTS things_toDo(
    id INTEGER PRIMARY KEY,
    task VARCHAR(255),
    priority VARCHAR(255),
    status VARCHAR(255),
    start_date INTEGER,
    due_date INTEGER
  )
SQL

# create a things_toDo table (if it's not there already)
db.execute(create_table)

def add_task(db, task, priority, status, start_date, due_date)
  db.execute("INSERT INTO things_toDo (task, priority, status, start_date, due_date) VALUES (?, ?, ?, ?, ?)", [task, priority, status, start_date, due_date])
end 

# User Interface

puts "Add a task to the list."
task = gets.chomp
puts "Select a priority for your task (low, normal or high)."
priority = gets.chomp
puts "Select a status of the task (not started, in progress, completed)."
status = gets.chomp
puts "Select a start date."
start_date = gets.chomp_to_i
puts "Select a due date."
due_date = gets.chomp_to_i

add_task(db, "#{task}", "#{priority}", "#{status}", "#{start_date}", "#{due_date}")

puts "Would you like to update a status of a task? If so, type task's number."
id = gets.chomp 
puts "What's the new status of the task?"
status = gets.chomp

def update_status(db, task)
  db.execute("UPDATE things_toDo SET status=? WHERE id=?", [id, status])
end

update_status(db,id,status)

puts "Would you like to delete a task? If so, type task's number."
number = gets.chomp 

def delete_task(db, id)
  db.execute("DELETE FROM items WHERE id=?", [number])
end

delete_task(db,number)

