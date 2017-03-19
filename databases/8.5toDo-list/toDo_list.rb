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
    start_date DATE,
    due_date DATE 
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
puts "Select a start date (yyyy-mm-dd)."
start_date = gets.chomp
puts "Select a due date (yyyy-mm-dd)."
due_date = gets.chomp

add_task(db, "#{task}", "#{priority}", "#{status}", "#{start_date}", "#{due_date}")

puts "Would you like to update a status of a task? If so, type task's number,
otherwise type 'done' to exit or 'print' to display all the records."

loop do 

id = gets.chomp 

  if id == "done"
    break 
  else 
    if id == "print"
      def print_records(db)
      db.execute("SELECT * FROM things_toDo")
      end
      p print_records(db)
      break
    end 
  end

puts "What's the new status of the task?"
status = gets.chomp

def update_status(db, id, status)
  db.execute("UPDATE things_toDo SET status=? WHERE id=?", [id, status])
end

update_status(db,id,status)

puts "Would you like to delete a task? If so, type task's number,
otherwise type 'done' to exit or 'print' to display all the records."
number = gets.chomp 

  if number == "done"
    break
  else 
    if number == "print"
      def print_records(db)
      db.execute("SELECT * FROM things_toDo")
      end
      p print_records(db)
      break
    end
  end 

def delete_task(db, number)
  db.execute("DELETE FROM items WHERE id=?", [number])
end

delete_task(db,number)
break
end 