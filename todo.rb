require_relative "task"

class Todo_list 
@@list = []
	def initialize

	end 

	def task_maker(task,due_date)
		task = Task.new(task, due_date)
	end

	def add_task(task)
		@@list.push(task)
	end 

	def display
		p @@list
		return @@list 
	end 


end 



task = Task.new("something", 1800)
task1 = Task.new("stuff", 1850)
task2 = Task.new("things", 180)

#puts task.inspect

task.change_due_date(1500)
#puts task.inspect

todo = Todo_list.new

todo.add_task(task)
todo.add_task(task1)
todo.add_task(task2)

 todo.display