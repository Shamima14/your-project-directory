require 'todo.rb'

RSpec. describe Todo do
    it "returns the task" do
      todo = Todo.new()
      expect(todo.task).to eq("Make the bed")
    end
    it "marks the todo as done" do
      todo = Todo.new()
      todo.mark_done!
      expect(todo).to be_done
    end
    it "returns true if the task is done" do
      todo = Todo.new()
      todo.mark_done!
      expect(todo).to be_done
    end
    it "returns false if the task is not done" do
      expect(todo).not_to be_done
    end
end 
