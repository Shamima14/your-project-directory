class Todo
  def initialize
    @tasks = []
  end

  def add_task(task)
    raise "You have not added a task!" if task.empty?
    @tasks << task
  end
  
  def mark_as_completed(task)
    raise "Nothing to complete!" unless @tasks.include?(task)
    @tasks.delete(task)
  end

  def print_tasks
    @tasks
  end
end

tasks = Todo.new
tasks.add_task("Buy milk")
tasks.add_task("Do laundry")
puts tasks.print_tasks