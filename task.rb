
class Task 
 	def initialize(description, due_date)
	@description = description
	@due_date = due_date
	end

	def description_reader 
		return @description
	end 

	def due_date_reader 
		return @due_date
	end 

	def due_time
		when_due = Time.now + due_date_reader.to_i
	end 

	def change_description=(description) #equal operator is used on this reader to write the new description
		@description = description
	end 

	def change_due_date=(due_date)
		@due_date = due_date
	end
	def modify_task(new_description) 
		self.change_description= new_description #task variable from ui file is the "self" object here
	end 

	def modify_task_due_date(new_due_date)
		self.change_due_date= new_due_date
	end 


end 

# task = Task.new("something", 18500)
# # task.modify_task("this")

# p task.inspect
# # puts task.inspect

# # task.change_due_date(1500)
# # puts task.inspect






