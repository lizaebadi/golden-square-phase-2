require 'todo'

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