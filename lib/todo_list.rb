class TodoList
  def initialize
    @list = []
  end

  def add(todo) # todo is an instance of Todo
    # Returns nothing
    @list << todo 
  end

  def incomplete
    # Returns all non-done todos
    @incomplete = []
    @list.each do |x| 
      if x.done? == false
        @incomplete << x
      end 
    end 
    return @incomplete
  end

  def complete
    # Returns all complete todos
    @completed = []
    @list.each do |x|
      if x.done? == true 
        @completed << x 
      end 
    end 
    return @completed
  end

  def give_up!
    # Marks all todos as complete
  end
end

todo_list = TodoList.new

