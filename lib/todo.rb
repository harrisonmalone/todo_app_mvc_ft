class Todo 
  attr_reader :id, :name, :done
  def initialize(id: nil, name: 'no name', done: false)
    @id = id
    @name = name
    @done = done
  end

  def self.all 
    [
      {
        id: 1,
        name: "Walk the dog",
        done: false
      },
      {
        id: 2,
        name: "Do homework",
        done: true
      }
    ].map do |todo|
      Todo.new(todo)
    end
  end
end












# model

# roadmap

# 1. users to be able to see todos
# 2. todos are going to be in memory, array of todo hashes
# 3. abide by mvc pattern

# model => .new, store all of the todos
# controller => going to call methods to do things in the view and model
# view => puts, .each loop, access the todos data
# routes => ensuring that an infinite loop runs, deal with the core menu logic