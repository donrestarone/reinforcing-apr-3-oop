require_relative "todo"
require_relative "task"

class Ui

  def main_menu
    while true 
      print_main_menu
      user_selected = gets.chomp.to_i
      call_option(user_selected)
    end
  end

  def print_main_menu
    puts "[1] add task"
    puts "[2] Modify an existing task"
    puts "[3] delete a task"
    puts "[4] display all tasks"
    puts "[5] modify the due date of a task"
    # puts "[6] Exit"
    # puts "enter a number"

  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_task
      when 2 then modify_existing_task
      when 3 then delete_task
      when 4 then display_all_tasks
      when 5 then change_due_date
      when 6 then raise "quit "
    end 
  end

  def add_task 
  	mylist = Todo_list.new #my list is the instance variable of Todo_list 
  	p "enter task"
  	task = gets.chomp 
  	p "enter due date"
  	due_date = gets.chomp
  	mylist.add_task(task, due_date)

  end 

  def display_all_tasks #make this more user friendly 
  	Todo_list.display.each do |task_instance|

  		puts "task: #{task_instance.description_reader}"
  		puts "due date: #{task_instance.due_date_reader}"
  	end 
  	
  end

  def modify_existing_task 
  	p "enter the description of the task you want to modify"
  	description = gets.chomp 
  	task = Todo_list.can_modify_list(description) #task can be false, or the matching instance of the task
  		if task == false 
  			puts "task not found"
  		else 
  			p "enter the new description"
  			new_description = gets.chomp 
  			task.modify_task(new_description) #task instance calls modify task in task class.

  		end
  end 

  def change_due_date 
  	p "enter the description of the task you want to modify"
  	description = gets.chomp 
  	task = Todo_list.can_modify_list(description) #task can be false, or the matching instance of the task
  		if task == false 
  			puts "task not found"
  		else 
  			p "enter the new due date"
  			new_due_date = gets.chomp 
  			task.modify_task_due_date(new_due_date)
  		end
  end 


end 

interface = Ui.new 
interface.main_menu