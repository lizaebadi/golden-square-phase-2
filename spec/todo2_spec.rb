require 'todo2'

RSpec.describe Todo2 do 
  it "constructs" do 
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    expect(first_todo).to eq first_todo
  end 

  it "returns false when a task is not done" do
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    expect(first_todo.done?).to eq false
  end 

  it "returns true when a task is done" do
    first_todo = Todo2.new("buy apples")
    second_todo = Todo2.new("buy oranges")
    first_todo.mark_done!
    expect(first_todo.done?).to eq true
  end 
  

end 