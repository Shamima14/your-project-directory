require 'todo.rb'
require 'todo_list.rb'

RSpec.describe TodoList do
it "adds tasks to todo list" do
        todo = TodoList.new("Make the bed")
        todo.add("Make the bed")
        expect(todo.incomplete()).to include 
    end
    it "returns all incomplete todos" do
      todo = TodoList.new()
      task.add(todo)
      todo.mark_done!
      expect(list.incomplete).to be_empty
    end

end