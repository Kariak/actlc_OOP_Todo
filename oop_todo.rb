require_relative "list"
require_relative "task"
require 'pry'

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 8))
list.add_task(Task.new("Take out trash", 9))
list.add_task(Task.new("Mow the lawn", 1))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_task_names
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!
list.tasks[1].toggle_complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_task_names

puts list.number_of_incomplete_tasks

# list.delete_complete_tasks

puts list.tasks[0].priority

p list.sort_by_priority