
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

	def change_description(description)
		@description = description
	end 

	def change_due_date(due_date)
		@due_date = due_date
	end


end 

task = Task.new("something", 18500)

puts task.inspect

task.change_due_date(1500)
puts task.inspect






