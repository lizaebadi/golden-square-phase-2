require 'todo_list'
require 'todo2'

RSpec.describe "integration" do 
  it "lists all incomplete todos" do 
    todo_list = TodoList.new
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    todo_list.add(first_todo)
    todo_list.add(second_todo)
    expect(todo_list.incomplete).to eq [first_todo, second_todo]
  end 


  it "lists all complete todos" do 
    todo_list = TodoList.new
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    todo_list.add(first_todo)
    todo_list.add(second_todo)
    first_todo.mark_done!
    expect(todo_list.complete).to eq [first_todo]    
  end 


  it "returns empty when all todos are complete" do
    todo_list = TodoList.new
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    todo_list.add(first_todo)
    todo_list.add(second_todo)
    first_todo.mark_done!
    second_todo.mark_done!
    expect(todo_list.incomplete).to eq []  
  end 
  
end 
