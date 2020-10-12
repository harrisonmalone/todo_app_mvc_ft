class TodosViews
  def index(todos) 
    todos.each do |todo|
      puts "#{todo.id}. #{todo.name}"
    end 
  end

  def completed(todo)
    puts todo.done ? "Completed ✅" : "Not Completed ❌"
  end

  def completed_input
    puts "What todo would you like to check if its been completed?"
    input
  end

  def input
    print "> " 
    gets.chomp
  end
  
  def menu 
    puts "Welcome to the todos app!"
    puts "Make your selection"
    puts "1. View all todos"
    puts "2. Is the todo done?"
    puts "3. Exit"
  end

  def handle_input_error
    puts "Input error! ❌"
    puts "You need to input a 1, 2 or 3"
  end
end