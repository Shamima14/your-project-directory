class TodoList
  def initialize
    @todo = []
  end

  def add(todo) # todo is an instance of Todo
    @todo << todo
  end

  def incomplete
    @todo.reject(&:done?)
    # Returns all non-done todos
  end

  def complete
    @todo.select(&:done?)
    # Returns all complete todos
  end

  def give_up!
    @todo.each(&:mark_done!)
    # Marks all todos as complete
  end
end