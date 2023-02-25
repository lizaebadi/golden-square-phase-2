class Todo1
  def initialize 
  @array_tasklist = []
  end 

  def list(add_tasks) 
    @add_tasks = add_tasks
    @array_tasklist << @add_tasks
  end 

  def tasks 
    return @array_tasklist.join(", ")
  end

  def completed_tasks(add_completed_tasks) 
    @add_completed_tasks = add_completed_tasks
    if @array_tasklist.include? @add_completed_tasks
      @array_tasklist.delete(@add_completed_tasks)
    else
      fail "Task not on list" 
    end
  end 

  def list_remaining_tasks 
    return @array_tasklist.join(", ")
  end 
end