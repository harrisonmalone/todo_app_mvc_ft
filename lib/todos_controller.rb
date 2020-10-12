class TodosController
  def initialize
    @views = TodosViews.new
  end

  def index 
    todos = Todo.all
    @views.index(todos)
  end

  def completed
    id = @views.completed_input.to_i
    todos = Todo.all
    todo = todos.find do |todo|
      id == todo.id
    end 
    @views.completed(todo)
  end

  def input_error
    @views.handle_input_error
  end

  def run 
    loop do 
      # menu
      @views.menu
      # handle user input
      routes(@views.input)
    end
  end

  private

  def routes(input) 
    if input == '1'
      index
    elsif input == '2'
      completed
    elsif input == '3'
      exit
    else
      input_error
    end
  end
end