require_relative "task"

class Todo_list
@@list = []
	# def initialize

	# end 

	def add_task(task, due_date)
		task = Task.new(task, due_date) #to add a task Todo_list calls on the class Task
		@@list.push(task)
		return @@list.last 
	end 

	def self.can_modify_list(description)
		obj = 0 
		@@list.each do |task|

			if task.description_reader == description
				#return true 
				obj = task #to get matching task out of the block 
			end 
				
		end
		if obj != 0 
			return obj 
		else 
			return false
		end 


	end 

	def self.display
		
		return @@list 
	end 

end 


# a = Todo_list.new

# a.add_task("something", 1800)


# # task = Task.new("something", 1800)
# # task1 = Task.new("stuff", 1850)
# # task2 = Task.new("things", 180)

# a = Todo_list.can_modify_list("something")

# a.modify_task("hi")

# puts a.inspect
# #puts task.inspect

# task.change_due_date(1500)
# #puts task.inspect

# todo = Todo_list.new

# todo.add_task(task)
# todo.add_task(task1)
# todo.add_task(task2)

#  todo.display