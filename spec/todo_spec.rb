require 'todo'

<<<<<<< HEAD
RSpec.describe 'todo class' do 
  it "returns the full list of tasks" do 
    todo = Todo1.new
    todo.list("Buy apples")
    todo.list("Read book")
    todo.list("Clean room")
    expect( todo.tasks ).to eq "Buy apples, Read book, Clean room"
  end 

  context "when some tasks are completed" do 
    it "returns the remaining tasks" do 
      todo = Todo1.new
      todo.list("Buy apples")
      todo.list("Read book")
      todo.list("Clean room")
      todo.completed_tasks("Read book")
      expect(todo.list_remaining_tasks).to eq "Buy apples, Clean room"
    end
  end


  context "when a task is marked complete that wasn't on the original list" do
    it "returns an error" do 
      todo = Todo1.new
      todo.list("Buy apples")
      todo.list("Read book")
      todo.list("Clean room")
      expect { (todo.completed_tasks("Clean book")) }.to raise_error "Task not on list"
    end 
  end
end 
=======
RSpec.describe Todo do
  it 'initializes' do
    todo = Todo.new
  end

  it 'returns list of tasks' do
    todo = Todo.new
    todo.add("task1")
    todo.add("task2")
    expect(todo.all_tasks).to eq ["task1", "task2"]
  end
end
>>>>>>> e6e26e0629526546b0f5dddfe3e4b27058ebb702
