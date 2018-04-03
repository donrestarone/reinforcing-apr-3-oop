require_relative "todo"
require_relative "task"

class ui

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
    # puts "[5] Search by attribute"
    # puts "[6] Exit"
    # puts "enter a number"

  end

  def call_option(user_selected)
    case user_selected
      when 1 then add_task
      when 2 then modify_existing_task
      when 3 then delete_task
      when 4 then display_all_tasks
      when 5 then search_by_attribute
      when 6 then raise "quit "
    end 
  end

  

end 