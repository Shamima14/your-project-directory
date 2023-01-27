require 'todo_list'

RSpec.describe Todo do
    it "initializes an empty array" do 
      tasks = Todo.new
      expect(tasks.instance_variable_get(:@tasks)).to eq []
    end
    it "adds task to list of tasks" do
      tasks = Todo.new
      tasks.add_task("Buy milk")
      expect(tasks.print_tasks).to eq(["Buy milk"])
    end
    it "raises an error when the user is inputting nothing" do 
      tasks = Todo.new
      expect{tasks.add_task("")}.to raise_error("You have not added a task!")
    end
    it "prints the list of tasks" do
      tasks = Todo.new
      tasks.add_task("Buy milk")
      tasks.add_task("Do laundry")
      expect(tasks.print_tasks).to eq ["Buy milk", "Do laundry"]
    end
    it "returns empty array if only task in list is completed" do
      tasks = Todo.new
      tasks.add_task("Buy milk")
      tasks.mark_as_completed("Buy milk")
      expect(tasks.print_tasks()).to eq []
    end
    it "marks a task as completed and removes it from the task list" do
      tasks = Todo.new
      tasks.add_task("Buy milk")
      tasks.add_task("Do laundry")
      tasks.mark_as_completed("Buy milk")
      expect(tasks.print_tasks).to eq ["Do laundry"]
    end
    it "raises an error when trying to complete something not on the list" do
      tasks = Todo.new
      tasks.add_task("Do laundry")
      tasks.add_task("walk the dog")
      expect{tasks.mark_as_completed("Buy milk")}.to raise_error("Nothing to complete!")
    end
  end

