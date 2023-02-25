require 'todo'

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