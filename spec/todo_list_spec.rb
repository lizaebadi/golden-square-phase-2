require 'todo_list'

RSpec.describe TodoList do 
  it "constructs" do 
    todo_list = TodoList.new 
    todo_list.add("buy apples")
    todo_list.add("buy oranges")
  end 
end 
